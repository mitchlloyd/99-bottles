class Song
  def initialize(number_of_bottles, verse_class)
    @number_of_bottles = number_of_bottles
    @verse_class = verse_class
  end

  def verses
    result = []
    @number_of_bottles.times do |num|
      result << @verse_class.new(num + 1)
    end
    result.reverse
  end
end

