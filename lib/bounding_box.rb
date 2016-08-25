class BoundingBox
  attr_reader :x, :y, :width, :height, :right, :left

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point?(x, y)
    if (x >= left) && (x <= right) && (y >= bottom) && (y <= top)
      return true
    else
      return false
    end
  end
end
