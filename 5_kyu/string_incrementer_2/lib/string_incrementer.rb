def increment_string(string)

  if string.split(/\D/) == []
    return string + "1"
  else
    end_number = string.split(/\D/).last
    string.chomp!(end_number)
    new_number = (end_number.to_i + 1).to_s
    string + new_number
  end

end
