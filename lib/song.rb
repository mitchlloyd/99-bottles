class Song
  def initialize(number_of_bottles, verse_class)
    @number_of_bottles = number_of_bottles
    @verse_class = verse_class
  end

  def to_s
    verses.join("\n\n")
  end

  private

  def verses
    @number_of_bottles.downto(1).map do
      |num| @verse_class.new(num)
    end
  end
end

