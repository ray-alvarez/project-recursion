# 1.  Build a method #merge_sort that takes in an array and returns
#     a sorted array, using a recursive merge sort methodology.
#
# 2.  Tips:
#  1. Think about the base case is and what behavior is happening again
#     and again and can actually be delegated to someone else(e.g. that
#     same method!).
#
#  2. It may be helpful to check out the background videos again if you
#     don't quite understand what should be going on.
# 
#  Links:
#  Merge Sort: https://www.youtube.com/watch?v=EeQ8pwjQxTM
#  

def merge_sort(array)
    return array if array.length == 1
    middle = array.length / 2
    merge merge_sort(array[0...middle]), merge_sort(array[middle..-1])
end

def merge(left, right)
    result = []
    until left.length == 0 || right.length == 0 do
        result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
end

array = [9,8,7,6,1]
puts merge_sort(array)