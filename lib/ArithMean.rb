# frozen_string_literal: true
# lib/ArithMean.rb

require "ArithMean/version"


module ArithMean
  class Calculator
    def self.average(numbers)
      raise ArgumentError, "Array cannot be empty" if numbers.empty?

      sum = numbers.reduce(:+)
      sum / numbers.size.to_f
    end
  end
end
