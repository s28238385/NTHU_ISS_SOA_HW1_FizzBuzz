# frozen_string_literal: true

## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game
def fizzbuzz(num, &block)
  array = []
  (1..num).each do |i|
    array << if (i % 15).zero? then 'FizzBuzz'
             elsif (i % 3).zero? then 'Fizz'
             elsif (i % 5).zero? then 'Buzz'
             else
               i.to_s
             end
  end
  array = block_given? ? array.map(&block) : array
end
