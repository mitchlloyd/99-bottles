class Verse
  def initialize(number_of_bottles)
    @number_of_bottles = number_of_bottles
  end

  def to_s
    [
      "#{bottles(@number_of_bottles)} of beer on the wall, #{bottles(@number_of_bottles)} of beer",
      "Take one down and pass it around",
      "#{bottles(@number_of_bottles - 1)} of beer on the wall",
    ].join("\n")
  end

  private

  def bottles(number)
    if number == 1
      "1 bottle"
    elsif number == 0
      "no more bottles"
    else
      "#{number} bottles"
    end
  end
end
