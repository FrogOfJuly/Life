//
// Created by Кирилл Голубев on 07/01/2017.
//
#include <algorithm>
#include <cstdlib>
#include <cmath>
#include "sell_brain.h"
#include "../brain/brain.h"
#include "../place/place.h"
#include "sell_params.h"
#include "../unit/unit.h"
#include "sell.h"
#include "../predator/pred.h"

void sell_brain::set_alert() {
    int k = 0;
    for (int x = -1; x < 2; x++)
        for (int y = -1; y < 2; y++) {
            if (dynamic_cast<sell *>(data->myplace->around[(x + 1) + (y + 1) * 3]->guest) != nullptr)
                k++;
            if (dynamic_cast<pred *>(data->myplace->around[(x + 1) + (y + 1) * 3]->guest) != nullptr)
                dynamic_cast<sell_params *>(data)->alert = true;
        }
    dynamic_cast<sell_params *>(data)->alert = !(k == 3 || k == 4);
}

void sell_brain::set_speed() {
    sell_params *pointer = dynamic_cast<sell_params *>(data);
    if (!pointer->alert)
        return;
    pointer->alert = false;
    int N = data->view_range * data->view_range;
    int x0 = data->view_range / 2, y0 = x0;
    int *move_options = new int[N];
    for (int i = 0; i < N; i++)
        move_options[i] = N;
    for (int i = 0; i < N; i++)
        if (pointer->_view(i)->guest == nullptr)
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
    data->speed[1] = i / (2 * y0 + 1) - y0;
    delete[] move_options;
}

sell_brain::sell_brain() {
    ;
}


