require 'pry'

class Triangle

  attr_accessor :len1, :len2, :len3
  
  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2 
    @len3 = len3
  end 
  
  def kind 
    if @len1 > 0 && @len2 > 0 && @len3 > 0 &&(@len1 + @len2 > @len3 && @len1 + @len3 > @len2 && @len2 + @len3 > @len1)
      if @len1 == @len2 && @len1 == @len3
        :equilateral
      elsif @len1 == @len2 || @len2 == @len3 || @len3 == @len1
        :isosceles
      elsif @len1 != @len2 && @len2 != @len3 && @len3 != @len1
        :scalene
      else 
        raise TriangleError
      end 
    else 
      raise TriangleError
    end
  end 
   
  class TriangleError < StandardError
    
  end 
  
end
