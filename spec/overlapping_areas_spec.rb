require 'overlapping_areas'

describe "Overlapping areas" do
  
  context "normalize" do
    
    it "should return the same value when they are equals" do
      normalize([1,1], [1,1]).should == [[1,1], [1,1]]
    end
    
    it "should return the combine to get a normalize one" do
      normalize([2,1], [1,2]).should == [[1,1], [2,2]]
    end
    
    it "should return the reverted order when is in not normalized" do
      normalize([3, 3], [1,1]).should == [[1,1], [3, 3]]
    end
    
  end

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
  
  it "should calc intersection rectangles between two different" do
    add_rectangle([1,2], [2,3])
    add_rectangle([1,2], [6,7])
    
    calc_intersection.should == [[1,2], [2,3]] 
  end

end