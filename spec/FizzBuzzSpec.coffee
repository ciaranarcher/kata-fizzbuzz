FizzBuzz = require('./../lib/FizzBuzz').FizzBuzz

describe 'FizzBuzz', ->
  beforeEach -> 
    @fizzbuzz = new FizzBuzz

  it 'responds to a number', ->
    expect(@fizzbuzz.respond(1)).not.toBeNull

  it 'returns "fizz" when number is divisible by 3', ->
    expect(@fizzbuzz.respond(3)).toEqual 'fizz'

  it 'returns "buzz" when number is divisible by 5', ->
    expect(@fizzbuzz.respond(5)).toEqual 'buzz'

  it 'and echos the number otherwise', ->
    expect(@fizzbuzz.respond(1)).toEqual 1

