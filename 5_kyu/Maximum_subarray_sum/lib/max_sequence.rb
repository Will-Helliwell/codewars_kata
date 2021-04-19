def max_sequence(arr)
  if arr.length == 0 || all_negative?(arr)
    0
  elsif all_positive?(arr)
    arr.sum
  else
    first_positive_index = get_first_positive_index(arr)
    last_positive_index = get_last_positive_index(arr)
    array_of_interest = arr[first_positive_index..last_positive_index]
    puts "array of interest = #{array_of_interest}"
    largest_sum = 0
    for i in 0..(array_of_interest.length - 1)
      remaining_numbers = array_of_interest.length - i
      for j in 0..(remaining_numbers)
        largest_sum = array_of_interest[i..-(j+1)].sum if array_of_interest[i..-(j+1)].sum > largest_sum
      end
    end
    return largest_sum
  end
end

private
def all_negative?(arr)
  arr.each{ |number|
    return false if number > 0
  }
  true
end

def all_positive?(arr)
  arr.each{ |number|
    return false if number < 0
  }
  true
end

def get_first_positive_index(arr)
  arr.each.with_index{ |number, index|
    return index if number > 0
  }
  return nil
end

def get_last_positive_index(arr)
  index = get_first_positive_index(arr.reverse)
  index = 0 - index - 1
end
