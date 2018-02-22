# -- completed -- #
# Create a class TriangleClassifier with the following method:
# classify(len1, len2, len3)

# This method accepts three numeric values each representing the length of one
# side of a triangle. It returns a symbol, :scalene, :isosceles, or :equilateral,
# where the return value corresponds to the actual type of the triangle.

# In addition, the classify method should perform error checking if the given
# lengths of the sides cannot correspond to a real triangle. In this case, it
# should raise the error ArgumentError.

class TriangleClassifier
  def classify l1, l2, l3
    sides = [l1, l2, l3].sort

    if sides[0] + sides[1] <= sides[2]
      raise ArgumentError.new('Those lengths cannot create a real triangle')
    end

    case sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      when 3 then :scalene
    end


  end
end
