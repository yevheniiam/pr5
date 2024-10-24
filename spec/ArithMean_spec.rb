# spec/arith_mean_spec.rb

require 'ArithMean'

RSpec.describe ArithMean::Calculator do
  describe '.average' do
    it 'calculates the average of an array of numbers' do
      numbers = [1, 2, 3, 4, 5]
      expect(ArithMean::Calculator.average(numbers)).to eq(3.0)
    end

    it 'raises an error if the array is empty' do
      expect { ArithMean::Calculator.average([]) }.to raise_error(ArgumentError, "Array cannot be empty")
    end

    it 'calculates the average of negative numbers' do
      numbers = [-1, -2, -3, -4, -5]
      expect(ArithMean::Calculator.average(numbers)).to eq(-3.0)
    end

    it 'calculates the average of decimal numbers' do
      numbers = [1.5, 2.5, 3.5]
      expect(ArithMean::Calculator.average(numbers)).to eq(2.5)
    end

    it 'calculates the average of a single number' do
      numbers = [10]
      expect(ArithMean::Calculator.average(numbers)).to eq(10.0)
    end
  end
end
