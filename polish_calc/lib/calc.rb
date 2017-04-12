require 'pry'
require 'pry-state'

class RPN
  attr_reader :user_input

  def initialize
    user_input = "1 2 +"
    @user_input = user_input
  end

  def calc(user_input)
    parse_input(user_input)
    # numbers.each do |x|
    #   if x.is_a Integer
    #
    # end
  end

  def parse_input(user_input)
    parsed_input = user_input.split(" ")
    arrange_input(parsed_input)
  end

  def arrange_input(parsed_input)
    parsed_input[1], parsed_input[2] = parsed_input[2], parsed_input[1]
    numberize(parsed_input)
  end

  def numberize(parsed_input)
    numbers = []
    operator = parsed_input[1]
    numbers << parsed_input.first.to_i
    numbers << operator
    numbers << parsed_input.last.to_i
    numbers
  end

end
