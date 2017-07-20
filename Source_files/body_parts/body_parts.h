//
// Created by Кирилл Голубев on 07/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_BODY_PARTS_H
#define LIFE_ATTEMPT_THREE_BODY_PARTS_H

#include "../sell/sell.h"

class unit_params;

class body_parts {
public:
    unit_params *data;

    body_parts();

    ~body_parts();

    void move();

    bool eat(place *victims_place);

    bool split();
};


#endif //LIFE_ATTEMPT_THREE_BODY_PARTS_Hr
