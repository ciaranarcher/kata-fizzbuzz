FizzBuzz = require('./../lib/FizzBuzz').FizzBuzz

describe 'FizzBuzz', ->
  beforeEach -> 
    @fizzbuzz = new FizzBuzz

  it 'responds to a number', ->
    expect(@fizzbuzz.respond(1)).toEqual ''

