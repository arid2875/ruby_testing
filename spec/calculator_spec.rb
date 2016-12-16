# spec/calculator_spec.rb
require 'calculator'

describe Calculator do

  describe ".add" do
    
    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(Calculator.add("2,4")).to eql(6)
        end
      end
    end

    context "given '17,100'" do
      it "returns 117" do
        expect(Calculator.add("17,100")).to eql(117)
      end
    end

  end
end