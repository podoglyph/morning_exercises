require 'byebug'

sum_of_squares = 0
square_of_sums = 0
running_total = 0

first_set = (1..100).to_a #square each one and add them all
second_set = (1..100).to_a #add them all then square

first_set.each do |number|
  sum_of_squares = sum_of_squares + (number * number)
end

second_set.each do |number2|
  running_total = running_total + number2
end

square_of_sums = running_total * running_total
  
difference = square_of_sums - sum_of_squares

#byebug

puts difference
