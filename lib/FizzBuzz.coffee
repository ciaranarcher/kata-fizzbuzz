class FizzBuzzFilter
  constructor: (fizzVal, buzzVal) ->
    @fizzVal = fizzVal
    @buzzVal = buzzVal

exports.FizzBuzzFilter = FizzBuzzFilter


class FizzBuzz
  constructor: (filter) ->
    if typeof filter == 'undefined'
      @filter = new FizzBuzzFilter 3, 5
    else
      @filter = filter

  respond: (num) ->
    # validation
    throw 'invalid input' unless typeof num == 'number'
    throw 'negative numbers not allowed' if num < 0
    throw 'zero not allowed' if num == 0

    # logic
    return 'fizzbuzz' if num % @filter.fizzVal == 0 and num % @filter.buzzVal == 0
    return 'fizz' if num % @filter.fizzVal == 0
    return 'buzz' if num % @filter.buzzVal == 0
    num

exports.FizzBuzz = FizzBuzz