require 'pry'

class ReverseIt

  attr_accessor :input, :new_one, :convert

  def initialize
    @input = ""
    @convert = []
    @new_one = []
  end
  
  def make_array(input)
    @convert = input.chars
  end

  def reverse_array
    convert.each do |i|
      #temp_length -+ 1
      #temp[i] = temp[temp_length]
      new_one.unshift(i)
    end
    new_one.join
  end
 
end

test = ReverseIt.new

test.make_array("cowwww")
print test.reverse_array