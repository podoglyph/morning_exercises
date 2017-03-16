#a series of numbers in which each number ( Fibonacci number ) is the sum of the two preceding numbers. The simplest is the series 1, 1, 2, 3, 5, 8, etc.
#calculate first 25 numbers.

#NOTE: define a method so I can pass in the first two numbers of the sequence. also, find out which numbers are prime.
require 'pry'

numbers = [0, 1]
sum = nil

until numbers.length == 25
  sum = numbers[-1] + numbers[-2]
  numbers.push(sum)
  #binding.pry
end
 puts numbers
