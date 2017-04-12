require 'pry'
require 'pry-state'

class AllergyScale
  attr_reader :allergens
  attr_accessor :score

  def initialize(score)
    @allergens = {
        :eggs => 1,
        :peanuts => 2,
        :shellfish => 4,
        :strawberries => 8,
        :tomatoes => 16,
        :chocolate => 32,
        :pollen => 64,
        :cats => 128
      }
      @results = []
      @score = score
  end

  def calc_results(score)
    if allergens.has_value?(score)
      return @results << allergens.key(score)
    end

    @allergens = Hash[allergens.to_a.reverse]
    allergens.each_value do |x|
      if x < score
        @results << allergens.key(score)
        score = score % x
        calc_results(score)
        binding.pry
      end

    end
  end
end
a = AllergyScale.new(32)
