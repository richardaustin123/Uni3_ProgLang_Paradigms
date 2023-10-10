#include <stdio.h>

// Imperative 
void fizzbuzz2() {

    const char *s[] = { 
        "%i\n", 
        "Fizz\n", 
        "Buzz\n", 
        "FizzBuzz\n" 
    };
    
    for (int i = 1; i <= 100; i++) {
        printf(s[!(i % 3) + 2 * !(i % 5)], i); 
        // If i is not divisible by 3,      it will be 0    - we need 0 as we want the first item in the list "%i\n"
        // If i is not divisible by 5,      it will be 0    - we need 0 as we want the first item in the list "%i\n"
        // If i is divisible by 3,          it will be 1    - we need 1 as we want the second item in the list "Fizz"
        // If i is divisible by 5,          it will be 2    - we need 2 as we want the third item in the list "Buzz"
        // If i is divisible by 3 and 5,    it will be 3    - we need 3 as we want the fourth item in the list "FizzBuzz"
    }
}

int main() {
    fizzbuzz2();
}