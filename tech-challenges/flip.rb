class Flip
    attr_accessor :input_array

    def initialize(input_array)
        @input_array = input_array
    end

    def flip_part(start_position, end_position)
      # your code goes here
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
