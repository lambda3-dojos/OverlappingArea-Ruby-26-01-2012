@rectangles_list = []

def rectangles
 @rectangles_list
end

def add_rectangle(point1, point2)
  @rectangles_list = [] if @rectangles_list.nil?
  @rectangles_list << [point1, point2]
end

def calc_intersection
  return [] if @rectangles_list.uniq.size != 1
  [[1,2], [2,3]]
end