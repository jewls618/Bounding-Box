class BoundingArea
  attr_reader :boxes, :x, :y

  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    if @boxes.empty?
      return false
    end
    @boxes.each do |box|
      if box.contains_point?(x,y)
        return true
       end
    end
    return false
  end
end
