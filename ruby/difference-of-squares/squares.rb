class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def sum_of_squares
    (1..number).inject do |sum, number|
      sum + number ** 2
    end
  end

  def square_of_sums
    (1..number).inject(:+) ** 2
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
