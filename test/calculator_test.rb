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
    calc.add(1, 1)
    assert_equal calc.total, calc.add(1, 1)
  end
  

end
