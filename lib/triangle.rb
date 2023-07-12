class Triangle
    def initialize(val1,val2,val3)
      @val1 = val1
      @val2 = val2
      @val3 = val3
    end

    def kind
      if (@val1 + @val2) <= @val3 || (@val2 + @val3) <= @val1 || (@val1 + @val3) <= @val2
        raise TriangleError
      elsif @val1 == 0 || @val2 == 0 || @val3 == 0
        raise TriangleError
      elsif @val1 < 0 || @val2 < 0 || @val3 < 0
        raise TriangleError
      elsif @val1 == @val2 && @val1 == @val3
        :equilateral 
      elsif @val1 == @val2 || @val1 == @val3 || @val2 == @val3
        :isosceles
      elsif @val1 != @val2 || @val1 != @val3 || @val2 != @val3
        :scalene
      end
      # if @val1 == 0 || @val2 == 0 || @val3 == 0
      #   raise TriangleError
      # elsif @val1 < 0 || @val2 < 0 || @val3 < 0
      #   raise TriangleError
      # elsif @val1 == @val2 && @val1 == @val3
      #   :equilateral 
      # elsif @val1 == @val2 || @val1 == @val3 || @val2 == @val3
      #   :isosceles
      # elsif @val1 != @val2 || @val1 != @val3 || @val2 != @val3
      #   :scalene
      # end
      
      # if (@val1 + @val2) < @val3 || (@val2 + @val3) < @val1 || (@val1 + @val3) < @val2
      #   raise TriangleError
      # end
    end
  
    class TriangleError < StandardError
      def message
        "Invalid traingle"
      end
    end
end
