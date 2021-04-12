def arithmetic(number1, number2, operator)

  operators = {
    "add" => "+",
    "subtract" => "-"
  }

  number1.send(operators[operator], number2)
end
