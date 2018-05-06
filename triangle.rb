class Triangle
  def initialize(a:, b: ,c:)
    @a = a
    @b = b
    @c = c
  end
  def name
    array = [@a,@b,@c]
    length = array.sort

    if length[2] >= (length[0] + length[1]) then
      '三角形でない'
    elsif @a==@b and @b==@c and @a==@c then
      '正三角形'
    elsif @a==@b or @b==@c or @c==@a then
      if (right_triangle(array))
        '直角二等辺三角形'
      else
        '二等辺三角形'
      end
    else
      if (right_triangle(array))
        '直角三角形'
      else
        '不等辺三角形'
      end
    end
  end
  private
  def right_triangle(array)
    length = array.sort!
    x = (length[0]**2 + length[1]**2)**(1/2.0)
    if (x == length[2])
      true
    else
      false
    end
  end
end