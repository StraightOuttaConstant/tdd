require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def add_three(number_one, number_two, number_three)
    return number_one + number_two + number_three
  end

  def square_root(number)
    return Math.sqrt(number)
  end

  def tax(check_subtotal, tax_rate=9)
    return (check_subtotal * (tax_rate / 100.0)).round(2)
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, 3)).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference between two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(7, 5)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2,5)).to eq(10)
    end
  end

  describe '#divide' do
    it 'should return quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(25, 5)).to eq(5)
    end
  end

  describe '#square' do
    it 'should return the product of a number times itself' do
      calculator = Calculator.new
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do
    it 'should return the product the first number times itself the second number of times' do
      calculator = Calculator.new
      expect(calculator.power(5, 3)).to eq(125)
    end
  end

  describe '#add_three' do
    it 'should add three numbers...together' do
      calculator = Calculator.new
      expect(calculator.add_three(1,2,3)).to eq(6)
    end
  end

  describe '#square_root' do
    it 'should return square root of a number' do
      calculator = Calculator.new
      expect(calculator.square_root(9)).to eq(3)
    end
  end

  describe '#tax' do
    it 'should return the 9% tax on a given amount' do
      calculator = Calculator.new
      expect(calculator.tax(10)).to eq(0.9)
    end

    it 'should return a variable tax if given a second argument' do
      calculator = Calculator.new
      expect(calculator.tax(10, 10)).to eq(1.0)
    end
  end
end

















