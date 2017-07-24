#include "../Layer/Layer.h"
#include "../Input_Layer/Input_layer.h"
#include "../Dense_Layer/Dense_Layer.h"
#include "tests.h"

int all_tests() {
    Brain::attaching_test();
    Brain::passing_test();
    Brain::length_test();
    Brain::test_Input_layer();
    Brain::test_Dense_layer();
    Brain::gsl_test();
    Brain::test_params_setter_and_getter();
    Brain::Brain_test();
    Brain::Brain_process_test();
    return 0;
}
