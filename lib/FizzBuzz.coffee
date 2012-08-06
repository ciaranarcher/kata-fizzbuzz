class FizzBuzz
  respond: (num) ->
    return 'fizz' if num % 3 == 0
    return 'buzz' if num % 5 == 0
    num

exports.FizzBuzz = FizzBuzz