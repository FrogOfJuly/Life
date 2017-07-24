//
// Created by Кирилл Голубев on 02/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PLACE_H
#define LIFE_ATTEMPT_THREE_PLACE_H

#include "../../Neural_net_attempt_two/Brain/Brain.h"

class unit;

class place {
public:
    unit *guest;
    place *around[9];
    bool plant, look;

    place();

    ~place();

    void spawn_sell();

    void spawn_pred();

    void clone_pred(Brain::Brain brain);

    void update();

    void kill_unit();

    bool sell_bearth();

    bool sell_death();

    void gowing();

    void cleaning();
};


#endif //LIFE_ATTEMPT_THREE_PLACE_H
