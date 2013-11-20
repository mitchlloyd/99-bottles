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
    expect(verse.lyrics).to eq(expected_lyrics)
  end
end


describe Song do
  class FakeVerse
    attr_reader :number_of_bottles
    def initialize(number_of_bottles)
      @number_of_bottles = number_of_bottles
    end
  end

  context "building verses" do
    let(:verses) { Song.new(2, FakeVerse).verses }

    it "builds a verse for each bottle of beer" do
      expect(verses.size).to eq(2)
    end

    it "builds verses with descending numbers of bottles" do
      expect(verses[0].number_of_bottles).to eq(2)
      expect(verses[1].number_of_bottles).to eq(1)
    end
  end
end

