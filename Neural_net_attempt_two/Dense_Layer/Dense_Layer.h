//
// Created by Golubev Kirill on 21/07/2017.
//

#ifndef NEURAL_NET_ATTEMPT_TWO_DENSE_LAYER_H
#define NEURAL_NET_ATTEMPT_TWO_DENSE_LAYER_H

#include "../Layer/Layer.h"

namespace Brain {
    template<double (*activation_function)(double), double (*derivative)(double)>
    class Dense_Layer : public Layer {
    private:
        int unit_number;

        double (*act_func)(double);

        double (*grad)(double);

        Eigen::MatrixXd W;
        Eigen::VectorXd b;

        void init();

        Eigen::VectorXd activation(Eigen::VectorXd input);

        Eigen::VectorXd transform(Eigen::VectorXd);

    public:
        int get_unit_number();

        Dense_Layer(Layer *net, int unit_number);

        Eigen::VectorXd get_Params();

        Eigen::VectorXd get_all_params();

        void set_Params(Eigen::MatrixXd);

        void set_all_params(Eigen::VectorXd);

        friend void test_Dense_layer();

        friend void test_params_setter_and_getter();
    };

    void test_Dense_layer();

    void test_params_setter_and_getter();

    double sigmoid(double x);

    double dsigmoid(double x);

    double identity(double x);

    double didentity(double x);

    double binary_step(double x);

    double dbinary_step(double x);

    double tanH(double x);

    double dtanH(double x);

    double RelU(double x);

    double dRelu(double x);

    typedef Dense_Layer<&sigmoid, &dsigmoid> SigmoidLayer;

    typedef Dense_Layer<&identity, &didentity> LinearLayer;

    typedef Dense_Layer<&binary_step, &dbinary_step> Binary_stepLayer;

    typedef Dense_Layer<&tanH, &dtanH> TanHLayer;

    typedef Dense_Layer<&RelU, &dRelu> RelULayer;
}

#endif //NEURAL_NET_ATTEMPT_TWO_DENSE_LAYER_H
