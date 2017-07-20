//
// Created by Кирилл Голубев on 07/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_SELL_H
#define LIFE_ATTEMPT_THREE_SELL_H


#include "../unit/unit.h"

class place;

class sell : public unit {
public:
    sell();

    sell(place *home);

    ~sell();

    void status_update();

    int who_am_i();
};


#endif //LIFE_ATTEMPT_THREE_SELL_H
