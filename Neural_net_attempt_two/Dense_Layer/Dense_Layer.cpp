//
// Created by Golubev Kirill on 21/07/2017.
//

#include "Dense_Layer.h"
#include "../Input_Layer/Input_layer.h"
#include <iostream>

using std::cout;
using std::endl;
using std::cerr;

template<double (*activation_function)(double), double (*derivative)(double)>
Brain::Dense_Layer<activation_function, derivative>::Dense_Layer(Layer *net, int unit_number):Layer(net) {
    this->act_func = activation_function;
    this->grad = derivative;
    this->unit_number = unit_number;
    init();
}

template<double (*activation_function)(double), double (*derivative)(double)>
Eigen::VectorXd Brain::Dense_Layer<activation_function, derivative>::transform(Eigen::VectorXd input) {
    Eigen::VectorXd watch = input;
    Eigen::MatrixXd W = (this->W);
    Eigen::VectorXd b = (this->b);
    Eigen::VectorXd tmp_vector = W * watch;
    tmp_vector += b;
    Eigen::VectorXd tmp = activation(tmp_vector);
    return tmp;
}

template<double (*activation_function)(double), double (*derivative)(double)>
Eigen::VectorXd Brain::Dense_Layer<activation_function, derivative>::activation(Eigen::VectorXd input) {
    Eigen::VectorXd output(this->unit_number);
    for (int i = 0; i < this->unit_number; i++)
        output[i] = this->act_func(input[i]);
    return output;
}

template<double (*activation_function)(double), double (*derivative)(double)>
void Brain::Dense_Layer<activation_function, derivative>::init() {
    this->W = Eigen::MatrixXd::Random(this->get_unit_number(), this->prev->get_unit_number());
    this->b = Eigen::MatrixXd::Random(this->get_unit_number(), 1);
}

template<double (*activation_function)(double), double (*derivative)(double)>
int Brain::Dense_Layer<activation_function, derivative>::get_unit_number() {
    return this->unit_number;
}

template<double (*activation_function)(double), double (*derivative)(double)>
Eigen::VectorXd Brain::Dense_Layer<activation_function, derivative>::get_Params() {
    Eigen::VectorXd Params(this->W.rows() * (this->W.cols() + 1));
    for (long int i = 0; i < this->W.rows() * this->W.cols(); i++)
        Params(i) = (this->W)(i);
    for (long int i = this->W.rows() * this->W.cols(); i < this->W.rows() * (this->W.cols() + 1); i++)
        Params(i) = (this->b)(i - this->W.rows() * this->W.cols());
    return Params;
}

template<double (*activation_function)(double), double (*derivative)(double)>
void Brain::Dense_Layer<activation_function, derivative>::set_Params(Eigen::MatrixXd Params) {
    if (Params.rows() != (this->prev->get_unit_number() + 1) * this->unit_number)
        cerr << "wrong shape should be " << (this->prev->get_unit_number() + 1) * this->unit_number <<
             " instead of " << Params.rows() << endl;
    for (int i = 0; i < this->unit_number * this->prev->get_unit_number(); i++)
        this->W(i) = Params(i);
    for (int i = this->unit_number * this->prev->get_unit_number();
         i < this->unit_number * (this->prev->get_unit_number() + 1); i++) {
        this->b(i - this->unit_number * this->prev->get_unit_number()) = Params(i);
    }
}

double Brain::identity(double x) {
    return x;
}

double Brain::didentity(double x) {
    return 1.0;
}

double Brain::binary_step(double x) {
    if (x > 0)
        return 1;
    else
        return 0;
}

double Brain::dbinary_step(double x) {
    return 0;
}

double Brain::tanH(double x) {
    return 2.0 / (1 + exp(-2 * x)) - 1.0;
}

double Brain::dtanH(double x) {
    return 1 - tanH(x) * tanH(x);
}

double Brain::RelU(double x) {
    if (x < 0)
        return 0;
    else
        return x;
}

double Brain::dRelu(double x) {
    if (x < 0)
        return 0;
    else
        return 1;
}

double Brain::dsigmoid(double x) {
    return sigmoid(x) * (sigmoid(x) - 1.0);
};

double Brain::sigmoid(double x) {
    return 1.0 / (1.0 + exp(-x));
}

void Brain::test_params_setter_and_getter() {
    Input_layer net(10);
    SigmoidLayer test_layer(&net, 20);
    auto Params = test_layer.get_Params();
    auto W = test_layer.W;
    auto b = test_layer.b;
    test_layer.set_Params(Params);
    if (test_layer.W == W && test_layer.b == b)
        cout << "params setting and params getting test is passed" << endl;
    else
        cout << "params setting and params getting test is failed" << endl;
}

void Brain::test_Dense_layer() {
    Brain::Input_layer net(3);
    Brain::SigmoidLayer hid_layer1(&net, 5);
    Brain::LinearLayer hid_layer2(&net, 7);
    Brain::Binary_stepLayer hid_layer3(&net, 8);
    Brain::TanHLayer hid_layer4(&net, 9);
    Brain::RelULayer hid_layer5(&net, 10);
    Eigen::VectorXd input(3);
    for (int i = 0; i < 3; i++)
        input[i] = i;
    auto tmp = net.calculate(input);
    cout << "Dense layer test passed" << endl;
}

template<double(*activation_function)(double), double(*dirivative)(double)>
Eigen::VectorXd Brain::Dense_Layer<activation_function, dirivative>::get_all_params() {
    if (this->next == nullptr)
        return this->get_Params();
    else {
        Eigen::VectorXd next_params = this->next->get_all_params();
        Eigen::VectorXd params = this->get_Params();
        Eigen::VectorXd all_params(params.rows() + next_params.rows());
        all_params << params, next_params;
        return all_params;
    }
}

template<double(*activation_function)(double), double(*dirivative)(double)>
void Brain::Dense_Layer<activation_function, dirivative>::set_all_params(Eigen::VectorXd params) {
    auto default_params = this->get_Params();
    long int used_params_number = default_params.rows() * default_params.cols();
    Eigen::VectorXd used_params(used_params_number);
    long int input_params_number = params.rows() * params.cols();
    Eigen::VectorXd unused_params(input_params_number - used_params_number);
    for (long int i = 0; i < used_params_number; i++)
        used_params(i) = params(i);
    for (long int i = used_params_number; i < input_params_number; i++)
        unused_params(i - used_params_number) = params(i);
    this->set_Params(used_params);
    if(this->next != nullptr)
        this->next->set_all_params(unused_params);
}
