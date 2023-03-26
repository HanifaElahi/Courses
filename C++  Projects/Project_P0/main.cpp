#include <iostream>
#include "headerfile.h"

int main(int argc, char* argv[]) {

    int num;

    if (argc != 2) {
        error_usage_message();
        return 1;
    }
    
    try {
        num = std::stoi(argv[1]);
    } 
    catch (const std::exception&) {
        error_usage_message();
        return 1;
    }

    if (num <= 0) {
        error_usage_message();
        return 1;
    }

    for (int i = 0; i < num; i++) {
        std::cout << "Hello World!" << std::endl;
    }

    return 0;
}







