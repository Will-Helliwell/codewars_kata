def fizzbuzz(number, hash={})

  if hash != {}
    hash.each{ |key, value|
      return value if number % key == 0
    }
  end

  return "fizzbuzz" if number % 3 == 0 && number % 5 == 0
  return "fizz" if number % 3 == 0
  return "buzz" if number % 5 == 0
  number
end
