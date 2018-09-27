# Write a function that computes the list of the first 100 Fibonacci numbers.
# By definition, the first two numbers in the Fibonacci sequence are 0 and 1,
# and each subsequent number is the sum of the previous two.
# As an example, here are the first 10 Fibonnaci numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, and 34.

def fibonacci(num)
  array = [0] if num == 1
  array = [0,1] if num >= 2
  until array.length == num
    new_num = array[-2] + array[-1]
    array << new_num
  end
  array
end

print fibonacci(100)
