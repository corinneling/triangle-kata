require 'minitest/autorun'
require 'minitest/pride'

require './triangle-classification/triangle_classifier'

class TestTriangleClassifier < Minitest::Test

  def setup
    @tri = TriangleClassifier.new
  end

  def test_does_triangle_classifier_exist
    assert_instance_of TriangleClassifier, @tri
  end

  def test_does_classify_take_3_parameters
    assert true, @tri.classify(1, 2, 3)
  end

  def test_does_classify_return_equilateral_if_all_parameters_are_equal
    assert_output(/equilateral/) { @tri.classify(3, 3, 3) }
  end

  def test_does_classify_return_equilateral_if_all_parameters_are_equal
    assert_output(/isosceles/) { @tri.classify(3, 3, 1) }
    assert_output(/isosceles/) { @tri.classify(3, 5, 3) }
    assert_output(/isosceles/) { @tri.classify(11, 3, 3) }
  end

end
