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

describe Verse do
  it "has lyrics when bottles are at least 3" do
    expected_lyrics = [
      "3 bottles of beer on the wall, 3 bottles of beer",
      "Take one down and pass it around",
      "2 bottles of beer on the wall",
    ].join("\n")
    verse = Verse.new(3)
    expect(verse.lyrics).to eq(expected_lyrics)
  end
end
