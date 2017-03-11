class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_triangle = [a + b > c, a + c > b, b + c > a]
    if valid_triangle.include?(false) || a <= 0 || b <= 0 || c <= 0
      # begin
        raise TriangleError
      # rescue TriangleError => error
        # puts error.message
      # end
    end
  end

end

class TriangleError < StandardError
  def message
    "Hey fella, try some other dimensions!"
  end
end
