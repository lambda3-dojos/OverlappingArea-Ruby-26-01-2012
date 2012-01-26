require 'overlapping_areas'

describe "Overlapping areas" do

  it "should add a rectangle" do
    add_rectangle([1,2], [2,3])
    rectangles.size.should == 1
  end
  
end