//
// Created by Кирилл Голубев on 01/02/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PRED_BRAIN_H
#define LIFE_ATTEMPT_THREE_PRED_BRAIN_H


#include "../brain/brain.h"
#include "../sell/sell_brain.h"

class pred_brain : public brain {
public:
    pred_brain();

    void set_speed();
};


#endif //LIFE_ATTEMPT_THREE_PRED_BRAIN_H
