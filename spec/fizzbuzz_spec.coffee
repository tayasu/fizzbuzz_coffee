FizzBuzz = require('../lib/fizzbuzz').FizzBuzz
Stub = require('../lib/output').Stub

describe('FizzBuzz', ->
  beforeEach ->
    output = new Stub
    @fizzbuzz = new FizzBuzz output

  describe('引数が、1の場合', ->
    it '1という文字列を返す事', ->
      expect(@fizzbuzz.say 1).toEqual '1'
  )

  describe('引数が、3で割り切れて、5で割り切れない場合', ->
    it 'Fizzという文字列を返す事', ->
      for num in (i * 3 for i in [1...10])
        if num % 5 isnt 0
          expect(@fizzbuzz.say num).toEqual 'Fizz'
  )

  describe('引数が、5で割り切れて、3で割り切れない場合', ->
    it 'Buzzという文字列を返す事', ->
      for num in (i * 5 for i in [1...10])
        if num % 3 isnt 0
          expect(@fizzbuzz.say num).toEqual 'Buzz'
  )

  describe('引数が、3でも5でも割り切れる場合', ->
    it 'FizzBuzzという文字列を返す事', ->
      for num in (i * (3 * 5) for i in [1...10])
        expect(@fizzbuzz.say num).toEqual 'FizzBuzz'
  )

  describe('引数が、3でも5でも割り切れない場合', ->
    it '引数の文字列を返す事', ->
      for num in [1...50]
        if num % 3 isnt 0 and num % 5 isnt 0
          expect(@fizzbuzz.say num).toEqual String num
  )
)