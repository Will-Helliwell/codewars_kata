def max_sequence(arr)
  if arr.length == 0 || all_negative?(arr)
    0
  else
    arr.sum
  end
end

def all_negative?(arr)
  arr.each{ |number|
    return false if number > 0
  }
  true
end
