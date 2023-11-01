// Procedural fizzbuzz in Go

package main

import "fmt"

func divisibleBy(numerator, divisor int) bool {
	return numerator % divisor == 0
}

func fizzbuzz(limit int) {
	for i := 1; i <= limit; i++ {
		if divisibleBy(i, 15) {
			fmt.Println("FizzBuzz")
		} else if divisibleBy(i, 3) {
			fmt.Println("Fizz")
		} else if divisibleBy(i, 5) {
			fmt.Println("Buzz")
		} else {
			fmt.Println(i)
		}
	}
}

func main() {
	fizzbuzz(100)
}