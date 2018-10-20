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
  indexes = {}
  nums.each_with_index do |num, idx|
    if indexes.has_key?(target - num)
      return [indexes[target - num], idx] 
    end
    indexes[num] = idx
  end
end

print two_sum([10, 2, 11, 16], 27)
print two_sum([31, 0, 12, 8], 12)