require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/pride'

require './kata/triangle_classifier'

class TestTriangleClassifier < Minitest::Test

  def setup
    @tri = TriangleClassifier.new
  end

  def test_does_triangle_classifier_exist
    assert_instance_of TriangleClassifier, @tri
  end

  def test_does_classify_take_3_parameters
    assert true, @tri.classify(3, 2, 3)
  end

  def test_does_classify_return_equilateral_if_all_parameters_are_equal
    assert_equal :equilateral, @tri.classify(3, 3, 3)
  end

  def test_does_classify_return_isosceles_if_two_parameters_are_equal
    assert_equal :isosceles, @tri.classify(3, 3, 5)
  end

  def test_does_classify_return_scalene_if_all_parameters_are_not_equal
    assert_equal :scalene, @tri.classify(10, 11, 12)
  end

  def test_how_sorting_the_array_is_working
    sides = [9, 2, 5].sort

    assert_equal [2, 5, 9], sides
  end

  def see_error
    sides = [9, 2, 0].sort
    if sides[0] + sides[1] <= sides[2]
      puts "error"
    end
  end

  def test_how_conditional_is_working
    assert_output(/error/) { see_error }
  end

end
