class Flip
  attr_accessor :input_array

  def initialize(input_array)
    @input_array = input_array
  end

  def flip_part(start_position, end_position)
    start_position = 0 if start_position < 0
    end_position = 9 if end_position > 9
    return if end_position < start_position

    while start_position < end_position
      start = @input_array[start_position]
      @input_array[start_position] = @input_array[end_position]
      @input_array[end_position] = start
      start_position += 1
      end_position -= 1
    end
  end
end

flip = Flip.new([1,2,3,4,5,6,7,8,9,10])
flip.flip_part(3, 7)
puts "#{flip.input_array}"  # should be [1,2,3,8,7,6,5,4,9,10]

flip = Flip.new([1,2,3,4,5,6,7,8,9,10])
flip.flip_part(-1, 7)
puts "#{flip.input_array}"  # should be [8,7,6,5,4,3,2,1,9,10]

flip = Flip.new([1,2,3,4,5,6,7,8,9,10])
flip.flip_part(1, 50)
puts "#{flip.input_array}"  # should be [1,10,9,8,7,6,5,4,3,2]

flip = Flip.new([1,2,3,4,5,6,7,8,9,10])
flip.flip_part(7, 2)
puts "#{flip.input_array}"  # should be [1,2,3,4,5,6,7,8,9,10]


# First solution

def flip_part(start_position, end_position)
  new_array = []
  part1 = []
  part2 = []
  part3 = []
  @input_array.each_with_index do |num, index|
    if index < start_position
      part1 << num
    elsif index >= start_position && index <= end_position
      part2 << num
    elsif index > end_position
      part3 << num
    end
  end
  new_array << part1
  new_array << part2.reverse
  new_array << part3
  @input_array = new_array.flatten
end

# Second Solution

def flip_part(start_position, end_position)
  start_position = 0 if start_position < 0
  end_position = 9 if end_position > 9
  return if end_position < start_position

  while start_position < end_position
    start = @input_array[start_position]
    @input_array[start_position] = @input_array[end_position]
    @input_array[end_position] = start
    start_position += 1
    end_position -= 1
  end
end

# Third Solution

def flip_part(start_position, end_position)
  start_position = 0 if start_position < 0
  end_position = 9 if end_position > 9
  @input_array[start_position..end_position] = @input_array[start_position..end_position].reverse
end
