class Garden
  attr_reader :plants

  def initialize(plants)
    @plants = plants.chars.delete_if { |letter| letter == "\n" }
    @first_row = plants.split("\n").first
    @second_row = plants.split("\n").last
  end

  def alice

  end

  def all_plants
    {
      "R" => :radishes,
      "C" => :clover,
      "G" => :grass,
      "V" => :violets
    }
  end

end
