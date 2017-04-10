require 'pry'
require 'pry-state'

class AllergyScale
  attr_reader :allergens, :score

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
  end

  def calc_results(score)
    if allergens.has_value?(score)
      #return the key for that values
    end
  end
  
end
