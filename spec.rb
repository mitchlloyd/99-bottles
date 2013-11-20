require 'verse'
require 'song'

describe Verse do
  it "has lyrics when bottles are at least 3" do
    expected_lyrics = [
      "3 bottles of beer on the wall, 3 bottles of beer",
      "Take one down and pass it around",
      "2 bottles of beer on the wall",
    ].join("\n")
    verse = Verse.new(3)
    expect(verse.to_s).to eq(expected_lyrics)
  end

  it "correctly handles '1 bottle' of beer" do
    expected_lyrics = [
      "1 bottle of beer on the wall, 1 bottle of beer",
      "Take one down and pass it around",
      "no more bottles of beer on the wall",
    ].join("\n")
    verse = Verse.new(1)
    expect(verse.to_s).to eq(expected_lyrics)
  end
end


describe Song do
  class FakeVerse
    def initialize(number_of_bottles)
      @number_of_bottles = number_of_bottles
    end

    def to_s
      "verse-#{@number_of_bottles}"
    end
  end

  context "singing the song" do
    let(:song) { Song.new(2, FakeVerse) }

    it "builds a verse for each bottle of beer" do
      expect(song.to_s).to eq "verse-2\n\nverse-1"
    end
  end
end

