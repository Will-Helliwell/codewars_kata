def up_array(arr)

  return nil if arr.class != Array
  return nil if arr.length == 0
  return nil if arr.filter{ |element| element.class != Integer }.length > 0

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
    arr[-1] += 1
  end

  arr

end
