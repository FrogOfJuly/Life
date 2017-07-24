//
// Created by Кирилл Голубев on 01/02/2017.
//

#ifndef LIFE_ATTEMPT_THREE_PRED_BRAIN_H
#define LIFE_ATTEMPT_THREE_PRED_BRAIN_H


#include "../brain/brain.h"
#include "../sell/sell_brain.h"
#include "../../Neural_net_attempt_two/Input_Layer/Input_layer.h"
#include "../../Neural_net_attempt_two/Dense_Layer/Dense_Layer.h"
#include "../../Neural_net_attempt_two/Brain/Brain.h"


class pred_brain : public brain {
private:
    Brain::Input_layer* init_mind();
    std::map<int ,std::tuple<int, int>> interpret;
    Eigen::VectorXd observation();
    void brain_update();
    void form_reward();
public:
    double prev_fat;
    bool splited;
    double reward;
    Brain::Brain mind;
    pred_brain();
    void set_speed_using_brain();
    void set_speed();
};


#endif //LIFE_ATTEMPT_THREE_PRED_BRAIN_H
