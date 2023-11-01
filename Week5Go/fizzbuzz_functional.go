// Functional fizzbuzz in Go

package main

import "fmt"

func divisibleBy(divisor int) func(int) bool {
	return func(numerator int) bool {
		return numerator % divisor == 0
	}
}

var div3  func(int) bool = divisibleBy(3)
var div5  func(int) bool = divisibleBy(5)
var div15 func(int) bool = divisibleBy(15)

func fizzbuzz(i int) string {
	switch {
	case div15(i):
		return "FizzBuzz"
	case div3(i):
		return "Fizz"
	case div5(i):
		return "Buzz"
	default:
		return fmt.Sprintf("%d", i)
	}
}

func main() {
	for i := 1; i <= 100; i++ {
		fmt.Println(fizzbuzz(i))
	}
}