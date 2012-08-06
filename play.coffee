FizzBuzz = require('./lib/FizzBuzz').FizzBuzz
FizzBuzzFilter = require('./lib/FizzBuzz').FizzBuzzFilter

# 3, 5
fizzbuzz = new FizzBuzz # default filter
for i in [1..100]
  console.log fizzbuzz.respond i

# 4, 6
# fizzbuzz = new FizzBuzz(new FizzBuzzFilter 4, 6)
# for i in [1..100]
#   console.log fizzbuzz.respond i