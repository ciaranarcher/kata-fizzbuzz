class FizzBuzz
  respond: (num) ->
    # validation
    throw 'invalid input' unless typeof num == 'number'
    throw 'negative numbers not allowed' if num < 0
    throw 'zero not allowed' if num == 0

    # logic
    return 'fizzbuzz' if num % 3 == 0 and num % 5 == 0
    return 'fizz' if num % 3 == 0
    return 'buzz' if num % 5 == 0
    num

exports.FizzBuzz = FizzBuzz