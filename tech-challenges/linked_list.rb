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
    print @head.val
    until @head.next == nil
      @head = @head.next
      print @head.val
    end
  end

  def reverse

  end
end

node_1 = Node.new(2)
node_2 = Node.new(4)
node_3 = Node.new(3)

ll_1 = LinkedList.new(node_1)
ll_1.append(node_2)
ll_1.append(node_3)
ll_1.output
ll_1.reverse

# puts add_two_numbers([2, 4, 3], [5, 6, 4])