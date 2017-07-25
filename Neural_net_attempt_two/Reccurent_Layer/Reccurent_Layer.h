//
// Created by Golubev Kirill on 25/07/2017.
//

#ifndef LIFE_BROKEN_RECCURENT_LAYER_H
#define LIFE_BROKEN_RECCURENT_LAYER_H

#include <iostream>
#include "../Dense_Layer/Dense_Layer.h"

namespace Brain {
    template<double (*activation_function)(double), double (*dirivative)(double)>
    class Reccurent_Layer : public Dense_Layer<activation_function, dirivative> {
    private:
        Eigen::MatrixXd reccurent_w;

        Eigen::MatrixXd Local_Memory;

        Eigen::VectorXd get_Params() {
            Eigen::VectorXd params(this->params_number);
            auto dense_params = Dense_Layer<activation_function, dirivative>::get_Params();
            Eigen::VectorXd rec_params(this->get_unit_number() * this->get_unit_number());
            for (long int i = 0; i < this->get_unit_number() * this->get_unit_number(); i++)
                rec_params(i) = this->reccurent_w(i);
            for (long int i = 0; i < dense_params.rows(); i++)
                params(i) = dense_params(i);
            for (long int i = 0; i < rec_params.rows(); i++)
                params(i + dense_params.rows()) = rec_params(i);
            return params;
        }

        void set_Params(Eigen::MatrixXd params) {
            if (params.rows() * params.cols() < this->params_number) {
                std::cerr << "wrong number of params " <<
                          params.rows() * params.cols() << " instead of " << this->params_number << std::endl;
                throw;
            }

            Eigen::VectorXd dense_params(this->params_number - this->get_unit_number() * this->get_unit_number());
            for (long int i = 0; i < dense_params.rows(); i++)
                dense_params(i) = params(i);
            Dense_Layer<activation_function, dirivative>::set_Params(dense_params);
            for (long int i = dense_params.rows(); i < params.rows() * params.cols(); i++)
                this->reccurent_w(i - dense_params.rows()) = params(i);
        }

        Eigen::VectorXd transform(Eigen::VectorXd input) {
            auto output = this->activation(this->reccurent_w * this->Local_Memory + this->W * input + this->b);
            this->Local_Memory = output;
            return output;
        }

    public:
        Reccurent_Layer(Layer *net, int neuron_number) : Dense_Layer<activation_function, dirivative>(net,
                                                                                                      neuron_number) {
            this->reccurent_w = Eigen::MatrixXd::Random(this->get_unit_number(), this->get_unit_number());
            this->params_number += this->get_unit_number() * this->get_unit_number();
            this->Local_Memory = Eigen::MatrixXd::Zero(this->get_unit_number(), 1);
        }

    };

    typedef Reccurent_Layer<&sigmoid, &dsigmoid> SigmoidReccurentLayer;
    typedef Reccurent_Layer<&identity, &didentity> LinearReccurentLayer;
    typedef Reccurent_Layer<&binary_step, &dbinary_step> Binary_stepReccurentLayer;
    typedef Reccurent_Layer<&tanH, &dtanH> TanHReccurentLayer;
    typedef Reccurent_Layer<&RelU, &dRelu> RelUReccurentLayer;
}


#endif //LIFE_BROKEN_RECCURENT_LAYER_H
