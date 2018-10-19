# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
  hash = Hash[nums.zip(0...nums.size)]
  nums.each do |first_num|
    nums.each do |second_num|
      if first_num + second_num == target && hash[first_num] != hash[second_num]
        return [hash[first_num], hash[second_num]]
      end
    end
  end
end

print two_sum([10, 2, 11, 16], 27)