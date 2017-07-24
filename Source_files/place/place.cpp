//
// Created by Кирилл Голубев on 02/01/2017.
//

#include "../place/place.h"
#include "../unit/unit_params.h"
#include "../sell/sell.h"
#include "../field/field.h"
#include "../sell/sell_brain.h"
#include "../predator/pred.h"
#include "../body_parts/body_parts.h"
#include "../../Neural_net_attempt_two/Brain/Brain.h"
#include <iostream>

using namespace std;

place::place() {
    plant = false;
    guest = nullptr;
}

place::~place() {
    if (guest != nullptr)
        delete guest;
}

void place::update() {
    if (sell_bearth()) {
        plant = true;
        return;
    }
    if (sell_death()) {
        guest->params->alive = false;
        return;
    }
    if (guest != nullptr) {
        if (dynamic_cast<sell *>(guest) != nullptr) {
            dynamic_cast<sell *>(guest)->status_update();
            return;
        }
        if (dynamic_cast<pred *>(guest) != nullptr) {
            //const clock_t begin_spawning_time = clock();
            dynamic_cast<pred *>(guest)->status_update();
            //std::cout<<"one speedsetting time: "<<float(clock() - begin_spawning_time) / CLOCKS_PER_SEC<<std::endl;
            return;
        }
    }
}

void place::cleaning() {
    if (guest == nullptr)
        return;
    if (!guest->params->alive)
        kill_unit();
}

void place::gowing() {
    if (!plant)
        return;
    spawn_sell();
    plant = false;
}

void place::spawn_sell() {
    if (guest != nullptr)
        return;
    guest = new sell(this);
}

void place::spawn_pred() {
    if (guest != nullptr)
        return;
    guest = new pred(this);
}

void place::clone_pred(Brain::Brain brain) {
    if (guest != nullptr)
        return;
    guest = new pred(this, brain);
}

void place::kill_unit() {
    delete guest;
    guest = nullptr;
}

bool place::sell_bearth() {
    if (guest != nullptr)
        return false;
    int k = 0;
    for (int i = 0; i < 9; i++)
        if (around[i]->guest != nullptr)
            if (dynamic_cast<sell *>(around[i]->guest) != nullptr)
                k++;
    return k == 3;
}

bool place::sell_death() {
    if (guest == nullptr)
        return false;
    if (dynamic_cast<sell *>(guest) == nullptr)
        return false;
    int k = 0;
    for (int i = 0; i < 9; i++)
        if (around[i]->guest != nullptr)
            if (dynamic_cast<sell *>(around[i]->guest) != nullptr)
                k++;
    return !(k == 3 || k == 4);
}