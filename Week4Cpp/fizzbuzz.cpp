#include <iostream>

bool divisible_by(int num1, int num2) { 
    return num1 % num2 == 0;
} 

void fizzbuzz(int limit) {
    for (int i = 1; i <= limit; i++) {
        if (divisible_by(i, 3) && divisible_by(i, 5)) {
            std::cout << "FizzBuzz\n";
        } else if (divisible_by(i, 3)) {
            std::cout << "Fizz\n";
        } else if (divisible_by(i, 5)) {
            std::cout << "Buzz\n";
        } else {
            std::cout << i << "\n";
        }
    }  
} 

int main() {
    fizzbuzz(100);
}