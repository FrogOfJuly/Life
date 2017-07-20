//
// Created by Кирилл Голубев on 02/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_BRAIN_H
#define LIFE_ATTEMPT_THREE_BRAIN_H

class unit_params;

class place;

class brain {
public:
    unit_params *data;

    void mark();

    virtual int who_am_i();

    static place *look_right(place *start, int len);

    static place *look_left(place *start, int len);

    static place *look_up(place *start, int len);

    static place *look_down(place *start, int len);

    brain();

    ~brain();
};


#endif //LIFE_ATTEMPT_THREE_BRAIN_H
