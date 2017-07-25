//
// Created by Кирилл Голубев on 01/02/2017.
//

#include "pred_params.h"
#include "../brain/brain.h"
#include <cstdlib>

int _signum(float a) {
    if (a > 0)
        return 1;
    else if (a < 0)
        return -1;
    return 1;
}

pred_params::pred_params() {
    fat = 9;
    view_range = 5;
}

pred_params::~pred_params() {
    ;
}


place *pred_params::_view(int i) {

    int x = i % (view_range) - view_range / 2;
    int y = i / (view_range) - view_range / 2;
    look f[]{
            brain::look_left,
            brain::look_up,
            brain::look_right,
            brain::look_down
    };
    place *t_dest = f[1 + _signum(x)](myplace, std::abs(x));
    place *dest = f[2 + _signum(y)](t_dest, std::abs(y));
    return dest;
}
