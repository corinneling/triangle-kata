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

  # def test_if_an_argument_error_is_raised_when_numbers_cant_create_real_triangle
  #   assert_raises(ArgumentError) { @tri.classify(1, 2, 3) }
  # end

end
