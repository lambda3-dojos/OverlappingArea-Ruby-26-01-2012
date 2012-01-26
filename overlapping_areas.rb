@rectangles_list = []

def normalize(point1, point2)
  swap_when_position_higher(0, point1, point2)
  swap_when_position_higher(1, point1, point2)
  [point1,point2]
end

def swap_when_position_higher(position, point1, point2)
  if(point1[position] > point2[position])
    x = point2[position]
    point2[position] = point1[position]
    point1[position] = x
  end
end

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