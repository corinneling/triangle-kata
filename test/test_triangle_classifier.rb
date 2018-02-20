require './kata/triangle_classifier'

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
    assert_equal :equilateral, @tri.classify(3, 3, 3)
  end

  def test_does_classify_return_isosceles_if_two_parameters_are_equal
    assert_equal :isosceles, @tri.classify(3, 3, 1)
  end

  def test_does_classify_return_scalene_if_all_parameters_are_not_equal
    assert_equal :scalene, @tri.classify(1, 2, 3)
  end

  def test_does_error_class_exist
    assert true, @tri.check_error(1)
  end

  def test_does_error_class_output_an_error_string
    assert_output(/Those lengths cannot create a real triangle/) { @tri.check_error(0) }
  end

end
