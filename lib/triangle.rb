class Triangle
  attr_reader :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    
  if (@s1 * @s2 * @s3) == 0 || (@s1 + @s2) <= @s3 || (@s2 +@s3) <= @s1 || (@s3 + @s1) <= @s2
    
    begin
     raise TriangleError
    end
    
    elsif s1 == s2 && s1 == s3
     self.kind = :equalateral
    
  
    elsif s1 == s2 || s1 == s3 || s2 == s3
     self.kind = :isosceles
    
  
   else
      self.kind = :scalene
    end
  end
end

  class TriangleError < StandardError
    def message
      puts "not a triangle"
  end
end