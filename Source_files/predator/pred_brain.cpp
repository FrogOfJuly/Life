//
// Created by Кирилл Голубев on 01/02/2017.
//

#include <algorithm>
#include <cstdlib>
#include "pred_brain.h"
#include "../unit/unit_params.h"
#include "../place/place.h"
#include "../sell/sell.h"
#include "pred_params.h"
#include <map>
#include <tuple>


pred_brain::pred_brain() : mind(init_mind()) {
    this->interpret = {
            {0,std::make_tuple(0,1)},
            {1,std::make_tuple(1,0)},
            {2,std::make_tuple(-1,0)},
            {3,std::make_tuple(0,-1)},
            {4,std::make_tuple(1,1)},
            {5,std::make_tuple(-1,-1)},
            {6,std::make_tuple(-1,1)},
            {7,std::make_tuple(1,-1)},
            {8,std::make_tuple(0,0)}
    };
}

void pred_brain::set_speed() {
    int N = data->view_range * data->view_range;
    int x0 = data->view_range / 2, y0 = x0;
    int *move_options = new int[N];
    pred_params *pointer = dynamic_cast<pred_params *>(data);
    for (int i = 0; i < N; i++)
        move_options[i] = N;
    for (int i = 0; i < N; i++)
        if (pointer->_view(i)->guest != nullptr)
            if (dynamic_cast<sell *>(pointer->_view(i)->guest) != nullptr)
                move_options[i] = std::max(abs(i % (2 * x0 + 1) - x0), abs(i / (2 * y0 + 1) - y0));
    int p = N;
    for (int i = 0; i < N; i++)
        if (move_options[i] < p)
            p = move_options[i];
    if (p == N) {
        delete[] move_options;
        data->speed[0] = rand() % 3 - 1;
        data->speed[1] = rand() % 3 - 1;
        return;
    }
    for (int i = 0; i < N; i++) {
        if (move_options[i] > p)
            move_options[i] = N;
        else if (move_options[i] == p)
            move_options[i] = i;
    }
    std::random_shuffle(move_options, move_options + N);
    int i;
    for (i = 0; move_options[i] == N; i++);
    i = move_options[i];
    data->speed[0] = i % (2 * x0 + 1) - x0;
    data->speed[1] = i / (2 * x0 + 1) - y0;
    delete[] move_options;
}

void pred_brain::set_speed_using_brain() {
    auto obs = observation();
    int action = mind.process(obs);
    std::tuple<int, int> inter = this->interpret[action];
    this->data->speed[0] = std::get<0>(inter);
    this->data->speed[1] = std::get<1>(inter);
}

Brain::Input_layer *pred_brain::init_mind() {
    int view_range = 19*19;
    Brain::Input_layer *net = new Brain::Input_layer(view_range);
    Brain::SigmoidLayer *hiddn_layer1 = new Brain::SigmoidLayer(net, int(view_range / 1.5));
    Brain::RelULayer *hidden_layer2 = new Brain::RelULayer(net, int(view_range / 3.5));
    Brain::SigmoidLayer *hidden_layer3 = new Brain::SigmoidLayer(net, int(view_range / 5.5));
    Brain::SigmoidLayer *hidden_layer4 = new Brain::SigmoidLayer(net, 9);
    return net;
}

Eigen::VectorXd pred_brain::observation() {
    const int N = this->data->view_range * this->data->view_range;
    Eigen::VectorXd observation(N);
    pred_params *pointer = dynamic_cast<pred_params *>(this->data);
    for (int i = 0; i < N; i++) {
        if (pointer->_view(i)->guest != nullptr)
            if (dynamic_cast<sell *>(pointer->_view(i)->guest) != nullptr)
                observation(i) = 1;
            else
                observation(i) = 2;
        else
            observation(i) = 0;
    }
    return observation;
}
