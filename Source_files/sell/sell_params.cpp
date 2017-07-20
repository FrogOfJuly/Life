//
// Created by Кирилл Голубев on 07/01/2017.
//

#include <cstdlib>
#include <iostream>
#include "sell_params.h"
#include "../unit/unit.h"
#include "../brain/brain.h"
#include "../place/place.h"

int signum(float a) {
    if (a > 0)
        return 1;
    else if (a < 0)
        return -1;
    return 1;
}


sell_params::sell_params() {
    alert = false;
    view_range = 3;
}

place *sell_params::_view(int i) {

    int x = i % (view_range) - view_range / 2;
    int y = i / (view_range) - view_range / 2;
    look f[]{
            brain::look_left,
            brain::look_up,
            brain::look_right,
            brain::look_down
    };
    place *t_dest = f[1 + signum(x)](myplace, std::abs(x));
    place *dest = f[2 + signum(y)](t_dest, std::abs(y));
    return dest;
}


sell_params::~sell_params() {
    ;
}
