def up_array(arr)

  if arr[0] == 9 && arr.uniq.length == 1
    puts "only nines"
    arr.map!{ |integer| 0 }
    arr.unshift(1)
  elsif arr[-1] == 9
    puts "at least one 9 at the end"
    index = -1
    until arr[index] != 9 do
      arr[index] = 0
      index -= 1
    end
    arr[index] += 1
  else
    puts "no nine at the end"
    arr[-1] += 1
  end

  arr

end
