require 'minitest/autorun'
require 'minitest/pride'

require './triangle-classification/triangle_classifier'

class TestTriangleClassifier < Minitest::Test

  def setup
    @triclass = TriangleClassifier.new
  end

  def test_does_triangle_classifier_exist
    assert_instance_of TriangleClassifier, @triclass
  end

end
