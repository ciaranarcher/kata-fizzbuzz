class FizzBuzz
  respond: (num) ->
    throw 'invalid input' unless typeof num == 'number' and num >= 0
    return 'fizz' if num % 3 == 0
    return 'buzz' if num % 5 == 0
    num

exports.FizzBuzz = FizzBuzz