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

pred_brain::pred_brain() {
    ;
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
