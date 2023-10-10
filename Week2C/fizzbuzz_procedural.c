#include <stdio.h>

// Procedural
void fizzbuzz1() {

    for(int i = 1; i <= 100; i++) {
        if(i % 15 == 0) { 
            printf("Fizzbuzz\n");
        }
        else if(i % 3 == 0) {
            printf("Fizz\n");
        }
        else if(i % 5 == 0) {
            printf("Buzz\n");
        }
        else {
            printf("%i\n",i);
        }
    }
}

int main() {
    fizzbuzz1();
}

