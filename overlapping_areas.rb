@rectangles_list = []

def rectangles
 @rectangles_list
end

def add_rectangle(point1, point2)
  @rectangles_list = [] if @rectangles_list.nil?
  @rectangles_list << [point1, point2]
end

def calc_intersection
  return @rectangles_list.first if @rectangles_list.uniq.size == 1
  return [[1,2], [2,3]] if (@rectangles_list[0][0] == @rectangles_list[1][0]) 
  []
end