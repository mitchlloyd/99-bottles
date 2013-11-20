class Verse
  def initialize(number_of_bottles)
    @number_of_bottles = number_of_bottles
  end

  def lyrics
    [
      "#{@number_of_bottles} bottles of beer on the wall, #{@number_of_bottles} bottles of beer",
      "Take one down and pass it around",
      "#{@number_of_bottles - 1} bottles of beer on the wall",
    ].join("\n")
  end
end
