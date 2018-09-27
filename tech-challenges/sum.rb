# Write three functions that compute the sum of the numbers in a given list using a for-loop, a while-loop, and recursion.

# while-loop:

def while_sum(array)
  count = 0
  while array.length > 0
    count += array.shift
  end
  count
end

puts "While-loop:"
puts while_sum([1,2,3])




# for-loop

def for_sum(array)
  count = 0
  array.map do |num|
    count += num
  end
  count
end

puts "For-loop:"
puts for_sum([1,2,3])



# recursion

def recursion_sum(array, count = 0)
  if array.length > 0
    count += array.shift
    recursion_sum(array, count)
  else
    count
  end
end

puts "Recursion:"
puts recursion_sum([1,2,3])
