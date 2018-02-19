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

  def test_does_classify_method_exist
    assert true, @tri.classify
  end

end
