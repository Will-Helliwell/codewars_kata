DEFAULT_HASH = {3 => "fizz", 5 => "buzz"}

def fizzbuzz(number, hash=DEFAULT_HASH)

    return_string = ""
    hash.each{ |key, value|
      return_string += value if number % key == 0
    }
    return return_string if return_string != ""
    number
end
