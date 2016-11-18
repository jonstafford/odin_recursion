def merge_sort arr
  return arr if arr.size == 1 
  
  split_point = arr.size / 2
  
  arr_1 = merge_sort(arr[0..split_point-1])
  arr_2 = merge_sort(arr[split_point..-1])
  
  result = []
  
  loop do
    if arr_1.empty?
      return result + arr_2
    elsif arr_2.empty?
      return result + arr_1
    end
  
    if arr_1[0] < arr_2[0]
      result << arr_1.shift
    else
      result << arr_2.shift
    end
  end
    
end


def check_merge_sort arr
  puts "Array before merge sorting: " + arr.to_s
  puts "Array after merge sorting:  " + (merge_sort(arr).to_s)
end

check_merge_sort [50, 8, 15, 16, 104, 23, 6, 42]

check_merge_sort [8, 6, 5, 4, 1, 2]

check_merge_sort [900, -1, 999999, 3, 0, -12]

