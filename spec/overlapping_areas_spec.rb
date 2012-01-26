require 'overlapping_areas'

describe "Overlapping areas" do

  it "should add a rectangle" do
    add_rectangle([1,2], [2,3])
    rectangles.size.should == 1
  end
  
  it "should add two rectangles" do
    add_rectangle([1,2], [2,3])
    add_rectangle([1,2], [2,3])
    rectangles.size.should == 2
  end
  
  it "should calc intersection rectangles between two equals" do
    add_rectangle([1,2], [2,3])
    add_rectangle([1,2], [2,3])
    
    calc_intersection.should == [[1,2], [2,3]] 
  end

  it "should calc intersection rectangles between two non intersection" do
    add_rectangle([1,2], [2,3])
    add_rectangle([4,6], [7,8])

    calc_intersection.should be_empty
  end    
 
  
end