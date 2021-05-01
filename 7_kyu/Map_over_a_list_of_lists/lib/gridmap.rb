def gridmap(twod_array)
  twod_array.map{ |array|
    array.map{ |n| yield(n) }
  }
end
