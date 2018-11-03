nums = [1, 4, 3, 9, 2, 0, 2, 3, 2, 1, 4, 2, 3, 5, 2]

#Exercise 0: Get the element 0 from the nums array
puts nums[5]






#Exercise 1: Make a hash where the key is the number, and the value its mode (The number of times it appears in the nums array)
new_hash = Hash.new
nums.each do |num|
  new_hash[num] = nums.count(num)
end

puts new_hash






# Exercise 2: Create a formatted string using the animals hash:
#"There are 4 dogs, 9 cats, 1 iguanas, 0 parrots"

animals = {
  dogs: 4,
  cats: 9,
  iguanas: 1,
  parrots: 0
}

puts "There are #{animals[:dogs]} dogs, #{animals[:cats]} cats, #{animals[:iguanas]} iguanas, #{animals[:parrots]} parrots."







#Exercise 3: Create a new hash that counts the number of pairs of animals:

animals = {
  dogs: 2,
  cats: 4,
  iguanas: 0,
  parrots: 0
}

pairs = animals.each do |animal, count|
  animals[animal] = (count / 2).floor
end

puts pairs

#Exercise 4:  Create a hash that counts how many times the values in the animals hash appear in the nums array.
nums = [1, 4, 3, 9, 2, 0, 2, 3, 2, 1, 4, 2, 3, 5, 2]

animals = {
  dogs: 2,
  cats: 4,
  iguanas: 0,
  parrots: 0
}

check_nums = []
animals.each do |animal, count|
  check_nums << animals[animal]
end

new_hash = Hash.new
check_nums.each do |number|
  nums.each do |num|
    new_hash[number] = nums.count(num)
  end
end

puts new_hash