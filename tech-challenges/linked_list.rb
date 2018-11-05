# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
#   Example:
#
#   Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
#   Output: 7 -> 0 -> 8
#   Explanation: 342 + 465 = 807.


class Node
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class LinkedList
  def initialize(head)
    @head = head
    @tail = head
  end

  def append(node)
    @tail.next = node
    @tail = @tail.next
  end

  def output
    head = @head
    print head.val
    until head == @tail
      head = head.next
      print head.val
    end
  end

  def reversed_num
    temp = []
    temp << @head.val
    until @head.next == nil
      @head = @head.next
      temp << @head.val
    end
    temp.reverse.join.to_i
  end

  def add_reversed(num1, num2)
    num1 + num2
  end

end

def construct_answer(num)
  array = num.to_s.chars
  node = Node.new(array.shift.to_i)
  ll_answer = LinkedList.new(node)
  array.each do |string_num|
    node = Node.new(string_num.to_i)
    ll_answer.append(node)
  end
  ll_answer
end

def process(ll_1, ll_2)
  sum = ll_1.reversed_num + ll_2.reversed_num
  ans = construct_answer(sum).reversed_num
  final = construct_answer(ans)
  final.output
end

node_1 = Node.new(2)
node_2 = Node.new(4)
node_3 = Node.new(3)

ll_1 = LinkedList.new(node_1)
ll_1.append(node_2)
ll_1.append(node_3)

node_4 = Node.new(5)
node_5 = Node.new(6)
node_6 = Node.new(4)

ll_2 = LinkedList.new(node_4)
ll_2.append(node_5)
ll_2.append(node_6)

process(ll_1, ll_2)

