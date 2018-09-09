require 'pry'
class Triangle
  # write code here

  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :a, :b, :c

def initialize(a, b, c)
  @a = a.to_f
  @b = b.to_f
  @c = c.to_f
  end

def kind

  raise TriangleError, 'Sum of two sides must be greater than the third.' if a + b < c || b + c < a || a + c < b
  raise TriangleError, 'Sum of two sides must not be equal to the third.' if a + b == c || b + c == a || a + c == b

  return :equilateral  if a == b && a == c
  return :isosceles    if a == b || b == c || a == c
  return :scalene      if a != b && b != c && a != c

end


class TriangleError < StandardError
 end

end
