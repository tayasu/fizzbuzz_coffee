class FizzBuzz
  constructor: (output) ->
    @output = output

  say: (num) ->
    @output.display String @_say num

  _say: (num) ->
    return 'FizzBuzz' if num % (3 * 5) == 0
    return 'Fizz' if num % 3 == 0
    return 'Buzz' if num % 5 == 0
    num

exports = {} if !exports
exports.FizzBuzz = FizzBuzz