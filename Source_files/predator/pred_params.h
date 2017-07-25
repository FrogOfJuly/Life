//
// Created by Кирилл Голубев on 01/02/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PRED_PARAMS_H
#define LIFE_ATTEMPT_THREE_PRED_PARAMS_H

#include "../unit/unit_params.h"

typedef place *(*look)(place *, int);

class pred_params : public unit_params {
public:
    double fat;
    double hunger_limit = 0;
    double bearth_limit = 0;
    double bearth_cost = 10;
    bool want_to_split;

    pred_params();

    ~pred_params();

    place *_view(int i);
};


#endif //LIFE_ATTEMPT_THREE_PRED_PARAMS_H
