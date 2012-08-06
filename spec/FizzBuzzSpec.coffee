FizzBuzz = require('./../lib/FizzBuzz').FizzBuzz
FizzBuzzFilter = require('./../lib/FizzBuzz').FizzBuzzFilter

describe 'FizzBuzz', ->
  beforeEach -> 
    @fizzVal = 3
    @buzzVal = 5
    @fizzbuzz = new FizzBuzz(new FizzBuzzFilter 3, 5)

  it 'responds to a number', ->
    expect(@fizzbuzz.respond(1)).not.toBeNull

  it 'throws an error for non-numeric input', ->
    expect(=> @fizzbuzz.respond('')).toThrow 'invalid input'
    expect(=> @fizzbuzz.respond()).toThrow 'invalid input'
    expect(=> @fizzbuzz.respond(null)).toThrow 'invalid input'

  it 'throws an error for negative numbers and zero', ->
    expect(=> @fizzbuzz.respond(0)).toThrow 'zero not allowed'
    expect(=> @fizzbuzz.respond(-1)).toThrow 'negative numbers not allowed'
    expect(=> @fizzbuzz.respond(-3)).toThrow 'negative numbers not allowed'

  it 'returns "fizz" when number is divisible by 3', ->
    expect(@fizzbuzz.respond(3)).toEqual 'fizz'

  it 'returns "buzz" when number is divisible by 5', ->
    expect(@fizzbuzz.respond(5)).toEqual 'buzz'

  it 'returns "fizzbuzz" if number is divisible by 3 and 5', ->
    expect(@fizzbuzz.respond(15)).toEqual 'fizzbuzz'

  it 'and echos the number otherwise', ->
    expect(@fizzbuzz.respond(1)).toEqual 1

