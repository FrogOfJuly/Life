//
// Created by Кирилл Голубев on 02/01/2017.
//

#include "../place/place.h"
#include "../unit/unit_params.h"
#include "../unit/unit.h"
#include "../field/field.h"
#include "../brain/brain.h"
#include "../predator/pred.h"
#include "../predator/pred_params.h"

brain::brain() {
    data = nullptr;
}

place *brain::look_right(place *start, int len) {
    place *pointer = start;
    for (int i = 0; i < len; i++)
        pointer = pointer->around[5];
    return pointer;
}

place *brain::look_left(place *start, int len) {
    place *pointer = start;
    for (int i = 0; i < len; i++)
        pointer = pointer->around[3];
    return pointer;
}

place *brain::look_down(place *start, int len) {
    place *pointer = start;
    for (int i = 0; i < len; i++)
        pointer = pointer->around[7];
    return pointer;
}

place *brain::look_up(place *start, int len) {
    place *pointer = start;
    for (int i = 0; i < len; i++)
        pointer = pointer->around[1];
    return pointer;
}

void brain::mark() {
    if (dynamic_cast<pred *>(data->myplace->guest) != nullptr)
        for (int i = 0; i < data->view_range * data->view_range; i++)
            dynamic_cast<pred_params *>(data)->_view(i)->look = true;
}

int brain::who_am_i() {
    return 0;
}

brain::~brain() {
    ;
}