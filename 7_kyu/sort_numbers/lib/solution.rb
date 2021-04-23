def solution(nums)
  return [] if nums == nil

  sorted_array = []
  for i in 1..nums.length
    lowest_element = nums.min
    first_index = nums.index(lowest_element)
    sorted_array << nums.delete_at(first_index)
  end
  sorted_array

end
