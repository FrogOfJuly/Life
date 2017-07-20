//
// Created by Кирилл Голубев on 01/02/2017.
//

#include "pred.h"
#include "../brain/brain.h"
#include "../predator/pred_brain.h"
#include "../predator/pred_params.h"
#include "../body_parts/body_parts.h"


pred::pred() {
    unit::core = new pred_brain;
    unit::params = new pred_params;
    unit::body_part = new body_parts;
    unit::body_part->data = params;
    unit::core->data = params;
}

pred::pred(place *home) {
    unit::core = new pred_brain;
    unit::params = new pred_params;
    unit::body_part = new body_parts;
    unit::body_part->data = params;
    unit::core->data = params;
    unit::params->myplace = home;
}

pred::~pred() {
    delete unit::core;
    delete unit::params;
    delete unit::body_part;
}

void pred::status_update() {
    params->age++;
    if (params->age % 3 == 0)
        dynamic_cast<pred_params *>(params)->fat--;

    if (dynamic_cast<pred_params *>(params)->fat < dynamic_cast<pred_params *>(params)->hunger_limit)
        params->alive = false;
    dynamic_cast<pred_brain *>(core)->set_speed();

}