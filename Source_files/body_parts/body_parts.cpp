//
// Created by Кирилл Голубев on 07/01/2017.
//

#include "body_parts.h"
#include <cmath>
#include <algorithm>
#include "../unit/unit_params.h"
#include "../place/place.h"
#include "../brain/brain.h"
#include "../predator/pred_params.h"
#include "../predator/pred.h"
#include "../predator/pred_brain.h"

int sign(int x);

body_parts::body_parts() {
    data = nullptr;
}

body_parts::~body_parts() {
    ;
}

void body_parts::move() {
    if (data->speed[0] == 0 && data->speed[1] == 0)
        return;
    place *destination;
    int x = sign(data->speed[0]);
    int y = sign(data->speed[1]);
    data->speed[0] = 0;
    data->speed[1] = 0;
    destination = data->myplace->around[1 + x + 3 * (1 + y)];
    if (eat(destination))
        return;
    if (destination->guest != nullptr)
        return;
    destination->guest = data->myplace->around[4]->guest;
    data->myplace->guest = nullptr;
    data->myplace = destination;
}

bool body_parts::eat(place *victims_place) {
    place *destination = victims_place;
    if (dynamic_cast<pred *>(data->myplace->guest) == nullptr)
        return false;
    if (dynamic_cast<sell *>(destination->guest) == nullptr)
        return false;
    destination->kill_unit();
    dynamic_cast<pred_params *>(data)->fat+=1.5;
    destination->guest = data->myplace->around[4]->guest;
    data->myplace->guest = nullptr;
    data->myplace = destination;
    return true;
}

bool body_parts::split() {
    if (dynamic_cast<pred_params *>(data)->fat < dynamic_cast<pred_params *>(data)->bearth_limit)
        return false;
    int i;
    int *split_options = new int[9];
    for (int j = 0; j < 9; j++)
        split_options[j] = 0;
    for (i = 0; i < 9; i++)
        if (data->myplace->around[i]->guest == nullptr)
            split_options[i] = i;

    std::random_shuffle(split_options, split_options + 9);
    for (i = 0; i < 9; i++)
        if (split_options[i] != 0)
            break;
    if (i == 9) {
        delete[] split_options;
        return false;
    }
    data->myplace->around[split_options[i]]->clone_pred(dynamic_cast<pred_brain*>(this->data->myplace->guest->core)->mind);
    delete[] split_options;
    dynamic_cast<pred_params *>(data)->fat += -dynamic_cast<pred_params *>(data)->bearth_cost;
    dynamic_cast<pred_brain*>(this->data->myplace->guest->core)->splited = true;
    return true;
}

int sign(int x) {
    if (x > 0) return 1;
    if (x < 0) return -1;
    return 0;
}