//
// Created by Кирилл Голубев on 01/01/2017.
//

#ifndef LIFE_WITH_GOOD_HEADER_UNIT_H
#define LIFE_WITH_GOOD_HEADER_UNIT_H

class unit_params;

class brain;

class body_parts;

class unit {
public:
    unit_params *params;
    brain *core;
    body_parts *body_part;

    void thinking();

    void moving();

    unit();

    virtual ~unit();

    virtual int who_am_i();
};


#endif //LIFE_WITH_GOOD_HEADER_UNIT_H
