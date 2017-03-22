class Calculator
  attr_reader :total

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def add(a, b)
    @total = a + b
  end

  

end
