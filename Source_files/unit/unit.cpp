//
// Created by Кирилл Голубев on 01/01/2017.
//

#include "../place/place.h"
#include "../unit/unit_params.h"
#include "../unit/unit.h"
#include "../brain/brain.h"
#include "../body_parts/body_parts.h"
#include "../sell/sell_brain.h"

unit::unit() {
    core = nullptr;
    params = nullptr;
    body_part = nullptr;
}

unit::~unit() {
    ;
}

void unit::thinking() {
    if (dynamic_cast<sell_brain *>(core) != nullptr) {
        dynamic_cast<sell_brain *>(core)->set_alert();
        dynamic_cast<sell_brain *>(core)->set_speed();
    }
}

void unit::moving() {
    body_part->move();
}

int unit::who_am_i() {
    return 1;
}