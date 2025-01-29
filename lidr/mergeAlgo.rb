#this is going to be the merge sort which divides an array into half until its at their
# once at their smallest parts combines them in order of assending or decending order
# how do i half and array in ruby(generally) then how do i sort it to be in ascending order
# how do then recombine the array
# algo for merg sort(firstele,lastelem)
# if (firstele < lastelem)
# middle (firstele + lastelem / 2 )
# algo for merge sort (middle+1 ,lastelem)
# combine (firstele, middle, lastelem)

def merge_sort(array)
  puts "This was printed recursively"  # To track recursive calls

  return array if array.length <= 1  # Base case: single-element arrays are already sorted

  mid = array.length / 2 
  left_half = merge_sort(array[0...mid]) 
  right_half = merge_sort(array[mid..-1])  

  merge(left_half, right_half)
  
end

def merge(left, right)
  sorted = []  # Array to store merged result
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift  # Remove the first element from left and add to sorted
    else
      sorted << right.shift # Remove the first element from right and add to sorted
    end
  end
  sorted + left + right  # Append any remaining elements
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110]) 