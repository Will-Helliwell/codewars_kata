def up_array(arr)

  return nil if is_invalid_argument?(arr)

  if arr[0] == 9 && arr.uniq.length == 1
    arr.map!{ |integer| 0 }
    arr.unshift(1)
  elsif arr[-1] == 9
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

def increment_last_digit(arr)
  arr[-1] += 1
end
