gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator.rb'

class CalculatorTest < Minitest::Test

  def test_does_class_initialize
    calc = Calculator.new
    assert_instance_of Calculator, calc
  end

  def test_does_calc_init_with_total_zero
    calc = Calculator.new
    assert_equal 0, calc.total
  end
  
  def test_can_add
    calc = Calculator.new
    calc.add(1)
    assert_equal calc.total, 1
  end

  def test_add_two
    calc = Calculator.new
    calc.add(1)
    assert_equal calc.total, 1
    calc.add(2)
    assert_equal calc.total, 3
  end

  def test_clear
    calc = Calculator.new
    calc.add(10)
    assert_equal calc.total, 10
    calc.add(15)
    assert_equal calc.total, 25
    calc.clear
    assert_equal calc.total, 0
  end

  def test_subtract
    calc = Calculator.new
    calc.add(10)
    calc.subtract(5)
    assert_equal calc.total, 5
  end


end
