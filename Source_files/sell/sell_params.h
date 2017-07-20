//
// Created by Кирилл Голубев on 07/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_SELL_PARAMS_H
#define LIFE_ATTEMPT_THREE_SELL_PARAMS_H

#include "../unit/unit_params.h"

typedef place *(*look)(place *, int);

class sell_params : public unit_params {
public:
    bool alert;

    sell_params();

    ~sell_params();

    place *_view(int i);
};


#endif //LIFE_ATTEMPT_THREE_SELL_PARAMS_H
