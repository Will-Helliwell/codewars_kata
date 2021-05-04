def up_array(arr)

  return nil if is_invalid_argument?(arr)

  if contains_only_nines?(arr)
    arr.map!{ |integer| 0 }
    arr.unshift(1)
  elsif ends_in_nine?(arr)
    index = -1
    until arr[index] != 9 do
      arr[index] = 0
      index -= 1
    end
    arr[index] += 1
  else
    increment_last_digit(arr)
  end

  arr

end


private
def is_invalid_argument?(arr)
  return true if arr.class != Array
  return true if arr.length == 0
  return true if arr.filter{ |element| element.class != Integer }.length > 0
end

def contains_only_nines?(arr)
  return arr[0] == 9 && arr.uniq.length == 1 ? true : false
end

def ends_in_nine?(arr)
  return arr[-1] == 9 ? true : false
end

def increment_last_digit(arr)
  arr[-1] += 1
end
