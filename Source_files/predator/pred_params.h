//
// Created by Кирилл Голубев on 01/02/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PRED_PARAMS_H
#define LIFE_ATTEMPT_THREE_PRED_PARAMS_H

#include "../unit/unit_params.h"

typedef place *(*look)(place *, int);

class pred_params : public unit_params {
public:
    int fat;
    int hunger_limit = 0;
    int bearth_limit = 10;
    int bearth_cost = 5;

    pred_params();

    ~pred_params();

    place *_view(int i);
};


#endif //LIFE_ATTEMPT_THREE_PRED_PARAMS_H
