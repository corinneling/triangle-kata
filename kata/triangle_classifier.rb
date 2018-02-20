# -- completed -- #
# Create a class TriangleClassifier with the following method:
# classify(len1, len2, len3)

# This method accepts three numeric values each representing the length of one
# side of a triangle. It returns a symbol, :scalene, :isosceles, or :equilateral,
# where the return value corresponds to the actual type of the triangle.

# -- incomplete -- #
# In addition, the classify method should perform error checking if the given
# lengths of the sides cannot correspond to a real triangle. In this case, it
# should raise the error ArgumentError.

class TriangleClassifier

  def classify length1, length2, length3
    sides = [length1, length2, length3].uniq.size
    case sides
    when 1 then :equilateral
    when 2 then :isosceles
    when 3 then :scalene
    end
  end

  def check_error
  end 

end