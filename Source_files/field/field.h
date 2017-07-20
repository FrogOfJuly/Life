//
// Created by Кирилл Голубев on 02/01/2017.
//

#ifndef LIFE_ATTEMPT_THREE_FIELD_H
#define LIFE_ATTEMPT_THREE_FIELD_H

class place;

class field {
public:
    int time;
    int W, H;
    place *lone;

    place &operator[](int index);

    field(int hight, int width);

    ~field();

    void update(int statr, int finnish);

    void moving(int start, int finnish);

    void spliting(int start, int finnish);

    void marking(int start, int finnish);

    void thinking(int start, int finnish);

    void spawning(int start, int finnish);

    int fill(double n, double k);

    void random_spawn(int time_step);

};


#endif //LIFE_ATTEMPT_THREE_FIELD_H
