//
// Created by Кирилл Голубев on 07/01/2017.
//

#include <iostream>
#include "sell.h"
#include "../brain/brain.h"
#include "../sell/sell_brain.h"
#include "../sell/sell_params.h"
#include "../body_parts/body_parts.h"

sell::sell() {
    unit::core = new sell_brain;
    unit::params = new sell_params;
    unit::body_part = new body_parts;
    unit::body_part->data = params;
    unit::core->data = params;
}

sell::sell(place *home) {
    unit::core = new sell_brain;
    unit::params = new sell_params;
    unit::body_part = new body_parts;
    unit::body_part->data = params;
    unit::core->data = params;
    unit::params->myplace = home;
}

sell::~sell() {
    delete unit::core;
    delete unit::params;
    delete unit::body_part;
}

void sell::status_update() {
    params->age++;
}

int sell::who_am_i() {
    return 1;
}