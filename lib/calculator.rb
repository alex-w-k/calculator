class Calculator
  attr_reader :total

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def add(a)
    @total += a 
  end

  def clear
    @total = 0
  end

  def subtract(a)
    @total -= a
  end

end
