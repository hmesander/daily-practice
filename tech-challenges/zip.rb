# Write a function that combines two lists by alternatingly taking elements.
# For example: given the two lists [a, b, c] and [1, 2, 3], the function should return [a, 1, b, 2, c, 3].

def zipper(array1, array2, array = [])
  until array2.empty?
    array << array1.shift
    array << array2.shift
  end
  array
end

print zipper(["a","b","c"], [1,2,3])
