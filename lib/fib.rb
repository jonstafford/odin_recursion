def fibs num
  result = []

  result << 1 if num > 0
  result << 1 if num > 1
  
  3.upto(num) do |i|
    result[i-1] = result[i-2] + result[i-3]
  end

  result
end

puts "fibs results:"
puts fibs 9
puts fibs 1
puts fibs 0


def fibs_rec num
  return [] if num < 1
  return [1] if num == 1
  return [1, 1] if num == 2
  
  arr = fibs_rec(num-1)
  arr << (arr[-1] + arr[-2])
  arr
end

puts "fibs_rec results:"
puts fibs_rec 9
puts fibs_rec 1
puts fibs_rec 0


