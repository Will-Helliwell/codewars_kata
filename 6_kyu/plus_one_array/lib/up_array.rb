def up_array(arr)
  if arr[-1] == 9
    arr[-1] = 0
    if arr.length > 1
      arr[-2] += 1
    else
      arr.unshift(1)
    end
  else
    arr[-1] += 1
  end
  arr
end
