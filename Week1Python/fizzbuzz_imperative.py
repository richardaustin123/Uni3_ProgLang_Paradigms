# Fizzbuzz

# Imperative
# Executes line by line, step by step

for x in range(1, 101):
    if x % 15 == 0:         # if the number is divisible by 3 and 5 
        print("Fizzbuzz")
    elif x % 3 == 0:        # if the number is divisible by 3
        print("Fizz")
    elif x % 5 == 0:        # if the number is divisible by 5
        print("Buzz")
    else:
        print(x)