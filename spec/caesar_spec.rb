require 'caesar'

describe "encrypt" do 

  context "encrypt a string with a shift" do
    
    context "given 'hello, world, 4'" do
      it "returns lipps, asvph"  do
        expect(encrypt("hello, world", 4)).to eql("lipps, asvph")
      end
    end

    context "given '123 abc ABC !@#{}'" do
      it "returns " do
        expect(encrypt("123 abc ABC !@$%", 20)).to eql("123 uvw UVW !@$%")
      end
    end
  end
end