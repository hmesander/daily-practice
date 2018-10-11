# Write a function that given a list of non negative integers, arranges them such that they form the largest possible number.
# For example, given [50, 2, 1, 9], the largest formed number is 95021.

def largest_num(array)
  firsts = array.map do |num|
    [first_digit(num), num]
  end
  sorted = firsts.sort_by { |array| array[0] }.reverse
  sorted.map { |array| array[1] }.join
end

def first_digit(num)
  num.to_s[0].to_i
end

puts largest_num([50, 2, 1, 9])
puts largest_num([21, 54, 2, 100])
