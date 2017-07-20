//
// Created by Кирилл Голубев on 07/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_SELL_BRAIN_H
#define LIFE_ATTEMPT_THREE_SELL_BRAIN_H

#include "../brain/brain.h"

class sell_brain : public brain {
public:
    sell_brain();

    void set_speed();

    void set_alert();
};


#endif //LIFE_ATTEMPT_THREE_SELL_BRAIN_H
