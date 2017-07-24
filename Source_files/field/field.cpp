//
// Created by Кирилл Голубев on 02/01/2017.
//

#include <cstdlib>
#include "../place/place.h"
#include "../unit/unit_params.h"
#include "../unit/unit.h"
#include "../field/field.h"
#include "../brain/brain.h"
#include "../body_parts/body_parts.h"
#include "../predator/pred.h"
#include <algorithm>
#include <iostream>

using namespace std;


field::field(int hight, int width) {
    H = hight;
    W = width;
    time = 0;
    lone = new place[H * W];
    for (int k = 0; k < H * W; k++)
        for (int j = -1; j < 2; j++)
            for (int i = -1; i < 2; i++) {
                int b = (width + k % W + i) % W, a = (H + (k / W + j)) % H;
                lone[k % W + (k / W) * W].around[i + 1 + (j + 1) * 3] = &(lone[b + a * W]);
            }
}

field::~field() {
    delete[] lone;
}

void field::moving(int start, int finnish) {
    int amount = 0;
    for (int i = start; i < finnish; i++)
        if (lone[i].guest != nullptr) {
            amount++;
        }
    int *list = new int[amount];
    amount = 0;
    for (int i = start; i < finnish; i++)
        if (lone[i].guest != nullptr) {
            list[amount] = i;
            amount++;
        }
    random_shuffle(list, list + amount);
    for (int i = 0; i < amount; i++) {
        lone[list[i]].guest->moving();
    }
    delete[] list;
}

void field::spliting(int start, int finnish) {
    int amount = 0;
    for (int i = start; i < finnish; i++)
        if (lone[i].guest != nullptr)
            if (dynamic_cast<pred *>(lone[i].guest) != nullptr)
                amount++;
    int *list = new int[amount];
    amount = 0;
    for (int i = start; i < finnish; i++)
        if (lone[i].guest != nullptr)
            if (dynamic_cast<pred *>(lone[i].guest) != nullptr) {
                list[amount] = i;
                amount++;
            }
    std::random_shuffle(list, list + amount);
    for (int i = 0; i < amount; i++) {
        dynamic_cast<pred *>(lone[list[i]].guest)->body_part->split();
    }
    delete[] list;
}

void field::thinking(int start, int finnish) {
    for (int i = start; i < finnish; i++) {
        if (lone[i].guest != nullptr)
            lone[i].guest->thinking();
    }
}

void field::marking(int start, int finnish) {
    for (int i = start; i < finnish; i++) {
        if (lone[i].guest != nullptr)
            lone[i].guest->core->mark();
    }
}

void field::update(int start, int finnish) {
    spawning(start, finnish);
    thinking(start, finnish);

    moving(start, finnish);
    spliting(start, finnish);
    marking(start, finnish);
    time++;
}

void field::spawning(int start, int finnish) {
    for (int i = start; i < finnish; i++) {
        lone[i].look = false;
    }
    for (int i = start; i < finnish; i++) {
        lone[i].update();
    }
    for (int i = start; i < finnish; i++) {
        lone[i].cleaning();
    }
    for (int i = start; i < finnish; i++) {
        lone[i].gowing();
    }
}

place &field::operator[](int index) {
    return lone[index];
}

int field::fill(double n, double m) {
    int k = 0;
    if (n != 0)
        for (int i = 0; i < W * H; i++)
            if ((double) (rand() % 1000) / 1000 < n && lone[i].guest == nullptr) {
                lone[i].spawn_sell();
                k++;
            }

    if (m != 0)
        for (int i = 0; i < W * H; i++)
            if ((double) (rand() % 1000) / 1000 < m && lone[i].guest == nullptr) {
                lone[i].spawn_pred();
                k++;
            }
    return k;
}

void field::random_spawn(int time_step) {
    if (time % time_step != 0)
        return;
    int i;
    do {
        i = rand() % (H * W);
    } while (lone[i].guest != nullptr);

    lone[i].spawn_sell();
}