# Your code here

require 'calculator'

describe Calculator do

  let(:calculator) { Calculator.new }

  describe '#add' do

    it 'can add 2 and 3' do
      expect(calculator.add(2,3) ).to eq(5)
    end

    it 'can add -2 and -3' do
      expect(calculator.add(-2,-3)).to eq(-5)
    end

    it 'can add 0.5 and 0.3' do
      expect(calculator.add(0.5,0.3)).to eq(0.8)
    end

    it 'can add -1.5 and 0.2' do
      expect(calculator.add(-1.5,0.2)).to eq(-1.3)
    end

  end

  describe '#subtract' do

    it 'can subtract 2 and 3' do
      expect( calculator.subtract(2,3) ).to eq(-1)
    end

    it 'can subtract -2 and -3' do
      expect(calculator.subtract(-2,-3)).to eq(1)
    end

    it 'can subtract 0.5 and 0.3' do
      expect(calculator.subtract(0.5,0.3)).to eq(0.2)
    end

    it 'can subtract -1.5 and 0.2' do
      expect(calculator.subtract(-1.5,0.2)).to eq(-1.7)
    end

  end

  describe '#multiply' do

    it 'can multiply 5 and 8' do
      expect(calculator.multiply(5,8)).to eq(40)
    end

    it 'can multiply -6 and 3' do
      expect(calculator.multiply(-6,3)).to eq(-18)
    end

    it 'can multiply 2 and 0' do
      expect(calculator.multiply(2,0)).to eq(0)
    end

  end

  describe '#divide' do

    it 'can divide 21 and 7' do
      expect(calculator.divide(21,7)).to eq(3)
    end

    it 'raises an ArgumentError when dividing by 0' do
      expect{calculator.divide(5,0)}.to raise_error(ArgumentError)
    end

    it 'returns a float if there is a remainder' do
      expect(calculator.divide(5,2)).to eq(2.5)
    end

  end

  describe '#pow' do

    it 'raises positive numbers to their power' do
      expect(calculator.pow(2,3)).to eq(8)
    end

    it 'raises negative numbers to their power' do
      expect(calculator.pow(-2,3)).to eq(-8)
    end

    it "raises decimals to their power" do
      expect(calculator.pow(0.9,2)).to eq(0.81)
    end

  end

  describe '#sqrt' do

    it "returns the square root of positive numbers" do
      expect(calculator.sqrt(25)).to eq(5)
    end

    it "raises errors for negative inputs" do
      expect{calculator.sqrt(-25)}.to raise_error(ArgumentError)
    end

    it "returns 2-digit decimals for non-round roots" do
      expect(calculator.sqrt(27)).to eq(5.20)
    end

  end

  describe '#memory=' do

    it "stores an object in memory, overwriting any previous value" do
      calculator.memory = 20
      calculator.memory = 25
      expect(calculator.memory).to eq(25)
    end

  end

  describe '#memory' do

    it "starts at nil" do
      expect(calculator.memory).to be_nil
    end

    it "resets after retrieving a value" do
      calculator.memory = 20
      calculator.memory
      expect(calculator.memory).to be_nil
    end

  end

  describe '#stringify' do

    it "returns the outputs of our calculator methods as strings when passed to a new calculator" do
      stringify_calc = Calculator.new(:stringify)
      results = []
      results << stringify_calc.add(2,2)
      results << stringify_calc.subtract(2,2)
      results << stringify_calc.multiply(2,2)
      results << stringify_calc.divide(2,2)
      results << stringify_calc.pow(2,2)
      results << stringify_calc.sqrt(9)
      expect(results.all? { |result| result.is_a? String }).to be_truthy
    end

  end

end
