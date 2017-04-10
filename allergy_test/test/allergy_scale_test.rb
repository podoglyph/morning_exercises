require 'minitest/autorun'
require 'minitest/pride'
require './lib/allergy_scale.rb'

class AllergyScaleTest < Minitest::Test

  def test_it_exists
    a = AllergyScale.new(34)

    assert_equal AllergyScale, a.class
  end

  def test_allergens_accessibility
    a = AllergyScale.new(34)
    es = a.allergens.values_at(:eggs, :shellfish)

    assert_equal [1, 4], es
  end

  def test_calcualted_score
    a = AllergyScale.new(34)

    
  end

end
