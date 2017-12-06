# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

	side1, side2, side3 = [a, b, c].sort

	if [a, b, c].include?0
		raise TriangleError, "Side Can't be ZERO!"
	elsif [a, b, c].any?(&:negative?)
		raise TriangleError, "Side Can't be NEGATIVE!"
	elsif side1 + side2 <= side3
		raise TriangleError, "Two sides of a triangle should add up to more than the third side."
	elsif (a==b) && (b==c)
		:equilateral 
	elsif ([a,b].include?c) || ([a,c].include?b)
		:isosceles 
	else
		:scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
