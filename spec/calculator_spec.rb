# Your code here

require 'calculator'

describe Calculator do
  describe '#add' do

    it 'can add 2 and 3' do
      expect( Calculator.new.add(2,3) ).to eq(5)
    end

    it 'can add -2 and -3' do
      expect(Calculator.new.add(-2,-3)).to eq(-5)
    end

    it 'can add 0.5 and 0.3' do
      expect(Calculator.new.add(0.5,0.3)).to eq(0.8)
    end

    it 'can add -1.5 and 0.2' do
      expect(Calculator.new.add(-1.5,0.2)).to eq(-1.3)
    end

  end

  describe '#subtract' do

    it 'can subtract 2 and 3' do
      expect( Calculator.new.subtract(2,3) ).to eq(-1)
    end

    it 'can subtract -2 and -3' do
      expect(Calculator.new.subtract(-2,-3)).to eq(1)
    end

    it 'can subtract 0.5 and 0.3' do
      expect(Calculator.new.subtract(0.5,0.3)).to eq(0.2)
    end

    it 'can subtract -1.5 and 0.2' do
      expect(Calculator.new.subtract(-1.5,0.2)).to eq(-1.7)
    end

  end

  describe '#multiply' do

    it 'can multiply 5 and 8' do
      expect(Calculator.new.multiply(5,8)).to eq(40)
    end

    it 'can multiply -6 and 3' do
      expect(Calculator.new.multiply(-6,3)).to eq(-18)
    end

    it 'can multiply 2 and 0' do
      expect(Calculator.new.multiply(2,0)).to eq(0)
    end

  end

  describe '#divide' do

    it 'can divide 21 and 7' do
      expect(Calculator.new.divide(21,7)).to eq(3)
    end

    it 'raises an ArgumentError when dividing by 0' do
      expect{Calculator.new.divide(5,0)}.to raise_error(ArgumentError)
    end

    it 'returns a float if there is a remainder' do
      expect(Calculator.new.divide(5,2)).to eq(2.5)
    end

  end

  describe '#pow' do

    it 'raises positive numbers to their power' do
      expect(Calculator.new.pow(2,3)).to eq(8)
    end

    it 'raises negative numbers to their power' do
      expect(Calculator.new.pow(-2,3)).to eq(-8)
    end

    it "raises decimals to their power" do
      expect(Calculator.new.pow(0.9,2)).to eq(0.81)
    end

  end

  describe '#sqrt' do

    it "returns the square root of positive numbers" do
      expect(Calculator.new.sqrt(25)).to eq(5)
    end

    it "raises errors for negative inputs" do
      expect{Calculator.new.sqrt(-25)}.to raise_error(ArgumentError)
    end

  end
end
