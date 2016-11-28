require('rspec')
require('triangles')

describe('Triangles') do
  describe('#type') do
    it('returns false if it is not a triangle') do
      new_triangle = Triangles.new(2, 2, 8)
      expect(new_triangle.type()).to(eq(false))
    end

    it('returns equilateral if all sides are equal') do
      new_triangle = Triangles.new(3, 3, 3)
      expect(new_triangle.type()).to(eq("equilateral"))
    end

    it('returns isosceles if exactly two sides are equal') do
      new_triangle = Triangles.new(4, 4, 3)
      expect(new_triangle.type()).to(eq("isosceles"))
    end
    it('returns scalene no sides are equal') do
      new_triangle = Triangles.new(6, 7, 8)
      expect(new_triangle.type()).to(eq("scalene"))
    end
  end
end
