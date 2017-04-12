require './lib/calc.rb'
require 'minitest/autorun'
require 'minitest/pride'

class RPNTest < Minitest::Test

  def test_it_exists
    c = RPN.new

    assert_instance_of RPN, c
  end

end
