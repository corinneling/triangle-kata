# -- completed -- #
# Create a class TriangleClassifier with the following method:
# classify(len1, len2, len3)

# -- incomplete -- #
# This method accepts three numeric values each representing the length of one
# side of a triangle. It returns a symbol, :scalene, :isosceles, or :equilateral,
# where the return value corresponds to the actual type of the triangle.

# In addition, the classify method should perform error checking if the given
# lengths of the sides cannot correspond to a real triangle. In this case, it
# should raise the error ArgumentError.

class TriangleClassifier
  def classify length1, length2, length3
    p "#{length1} #{length2} #{length3}"
  end
end
