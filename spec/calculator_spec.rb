# Your code here

require 'calculator'

describe Calculator do
  describe '#add' do

    it 'can add 2 and 3' do
      expect( Calculator.new.add(2,3) ).to eq(5)
    end

  end
end
