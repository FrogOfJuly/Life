#include <iostream>
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include "place/place.h"
#include "unit/unit_params.h"
#include "unit/unit.h"
#include "field/field.h"
#include "brain/brain.h"
#include "predator/pred.h"
#include "sell/sell.h"
#include "predator/pred_params.h"
#include <cmath>

using namespace std;

int Draw_Life(sf::RenderWindow &window, field *A, int start, int finnish);

int main() {
    int width = 100, height = 100, w_h = 650, w_w = 650;
    field A(height, width);
    sf::RenderWindow event_window(sf::VideoMode((unsigned int) w_w, (unsigned int) w_h), "Number three");
    double n = 0.2, m = 0.002;
    srand(time(NULL));
    cout << A.fill(n, m) << endl;
    cout << "esc  - exit" << endl;
    cout << "reds - sells wich are just spawning and splitting" << endl;
    cout << "greens - sells wich hunts reds and splitiing" << endl;
    while (event_window.isOpen()) {
        sf::Event event;
        while (event_window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                event_window.close();
            if (event.key.code == sf::Keyboard::Escape)
                event_window.close();
        }
        const clock_t begin_time = clock();
        event_window.clear(sf::Color(0, 0, 0));
        Draw_Life(event_window, &A, 0, A.H * A.W);
        A.update(0, A.H * A.W);
        event_window.display();
        //std::cout << "era time = " << float(clock() - begin_time) / CLOCKS_PER_SEC << std::endl;
    }
    return 0;
}

int Draw_Life(sf::RenderWindow &window, field *A, int start, int finnish) {
    int num;
    sf::RectangleShape c;
    sf::Color color(0, 0, 0);
    num = 0;
    for (int i = start; i < finnish; i++) {
        if ((*A)[i].guest != nullptr) {
            if (dynamic_cast<sell *>((*A)[i].guest) != nullptr) {
                color.r = (sf::Uint8) ((int) ((255 * 4) / log(pow(2.71, 4) + (A->lone[i].guest->params->age))));

                color.g = (sf::Uint8) (10 * (int) log(1 + (A->lone[i].guest->params->age)));

                c.setFillColor(color);
                c.setPosition(2 * (i % A->W), (2 * (int) ((float) i / A->W)));
                c.setSize(sf::Vector2f(2, -2));
                window.draw(c);
            } else if (dynamic_cast<pred *>((*A)[i].guest) != nullptr) {
                color.b = (sf::Uint8) (10 * (int) log(1 + (dynamic_cast<pred_params *>(A->lone[i].guest->params)->fat)));

                color.g = (sf::Uint8) ((int) ((255 * 2) / log(pow(2.71, 2) +
                                                              dynamic_cast<pred_params *>(A->lone[i].guest->params)->fat)));

                c.setFillColor(color);
                c.setPosition(2 * (i % A->W), (2 * (int) ((float) i / A->W)));
                c.setSize(sf::Vector2f(2, -2));
                window.draw(c);
            }
            color.r = 0;
            color.g = 0;
            color.b = 0;
        } else if ((*A)[i].look) {
            color.b = 100;
            c.setFillColor(color);
            c.setPosition(2 * (i % A->W), (2 * (int) ((float) i / A->W)));
            c.setSize(sf::Vector2f(2, -2));
            window.draw(c);
            color.b = 0;
        }
    }
    return num;
}