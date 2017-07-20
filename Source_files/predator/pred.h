//
// Created by Кирилл Голубев on 01/02/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PRED_H
#define LIFE_ATTEMPT_THREE_PRED_H


#include "../unit/unit.h"

class place;

class pred : public unit {
public:
    pred();

    pred(place *home);

    ~pred();

    void status_update();
};


#endif //LIFE_ATTEMPT_THREE_PRED_H
