# Fizzbuzz

# Procedural 

print("Fizzbuzz in procedural")

# divisible_by(+number, +divisor)
# passig in number and divisor
def divisible_by(number, divisor):
    return number % divisor == 0

# fizzbuss(+limit)
def fizzbuzz(limit):
    for x in range(1, limit+1):
        if divisible_by(x, 15):
            print("Fizzbuzz")
        elif divisible_by(x, 3):
            print("Fizz")
        elif divisible_by(x, 5):
            print("Buzz")
        else:
            print(x)
            
fizzbuzz(100)