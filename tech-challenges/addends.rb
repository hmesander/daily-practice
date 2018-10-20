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
  index1 = 0
  index2 = index1 + 1
  until index1 == (nums.size - 1)
    until index2 == nums.size
      if nums[index1] + nums[index2] == target
        return [index1, index2]
      end
      index2 += 1
    end
    index1 += 1
    index2 = index1 + 1
  end
end

print two_sum([10, 2, 11, 16], 27)
print two_sum([31, 0, 12, 8], 12)