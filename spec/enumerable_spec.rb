require 'enumerable'

describe "Enumberable" do

    describe ".my_each" do 
    
      context "with 3 integers in array" do
        arr = [1,2,3]

        context "without block" do
          it "returns [1,2,3]" do
            expect(arr.my_each).to eql([1,2,3])
          end
        end   

    end

    
  end

end