def sort_array(source_array)
  odds = source_array.filter{ |number| number % 2 != 0 }
  odds.sort!
  source_array.map!{ |number|
    if number % 2 != 0
      number = odds.shift
    else
      number
    end
  }
end

print sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5])
