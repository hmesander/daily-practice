# Write a function to check whether a positive integer is a power of 2.

def check(int)
  return (int != 0) && (int & (int - 1) == 0 ? true : false)
end

def prints_ans(num=0)
  until num == 17
    puts "#{num}: #{check(num)}"
    num += 1
  end
end

prints_ans
