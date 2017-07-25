//
// Created by Кирилл Голубев on 02/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_UNIT_PARAMS_H
#define LIFE_ATTEMPT_THREE_UNIT_PARAMS_H


class unit;

class place;

class unit_params {
public:
    place *myplace;
    int age;
    bool alive;
    int speed[2];
    int view_range = 13;

    unit_params();
    virtual ~unit_params();
};


#endif //LIFE_ATTEMPT_THREE_UNIT_PARAMS_H
