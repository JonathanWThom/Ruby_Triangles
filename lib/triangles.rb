class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:type) do
    if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      false
    elsif (@side1 == @side2) && (@side1 == @side3)
      "equilateral"
    elsif (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side2 != @side3) || (@side2 == @side3 && @side1 != @side3)
      "isosceles"
    else 
      "scalene"
    end
  end
end
