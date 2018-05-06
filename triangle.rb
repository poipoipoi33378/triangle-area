class Triangle
  def initialize(a:, b: ,c:)
    array = [a,b,c]
    @length = array.sort
  end

  def name
    if check_triganle() then
      '三角形でない'
    elsif check_equilateral_triangle() then
      '正三角形'
    elsif check_isosceles_triangle() then
      if check_right_triangle()
        '直角二等辺三角形'
      else
        '二等辺三角形'
      end
    else
      if check_right_triangle()
        '直角三角形'
      else
        '不等辺三角形'
      end
    end
  end
  private
  def check_right_triangle
    x = (@length[0]**2 + @length[1]**2)**(1/2.0)
    (x == @length[2])
  end

  def check_equilateral_triangle
    @length[0]==@length[1] and @length[1]==@length[2] and @length[2]==@length[0]
  end

  def check_isosceles_triangle
    @length[0]==@length[1] or @length[1]==@length[2] or @length[2]==@length[0]
  end

  def check_triganle
    @length[2] >= (@length[0] + @length[1])
  end
end