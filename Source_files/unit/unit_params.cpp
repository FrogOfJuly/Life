//
// Created by Кирилл Голубев on 02/01/2017.
//

#include "../place/place.h"
#include "../unit/unit_params.h"
#include "../unit/unit.h"
#include "../field/field.h"
#include "../brain/brain.h"

unit_params::unit_params() {
    age = 0;
    speed[0] = speed[1] = 0;
    alive = true;
    myplace = nullptr;
}

unit_params::~unit_params() {
    myplace = nullptr;
}


