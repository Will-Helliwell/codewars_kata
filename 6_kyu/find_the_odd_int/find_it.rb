def find_it(seq)
  frequencies = Hash.new(0)
  seq.each{ |num|
    frequencies[num] += 1
  }
  odd_number = frequencies.select{ |number, frequency| frequency % 2 != 0 }
  odd_number.to_a[0][0]
end

puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
