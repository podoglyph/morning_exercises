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
    numbers = parsed_input.map
  end

end
