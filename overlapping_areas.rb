@rectangles_list = []

def rectangles
 @rectangles_list
end

def add_rectangle(point1, point2)
  @rectangles_list = [] if @rectangles_list.nil?
  @rectangles_list << [point1, point2]
end