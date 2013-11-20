require 'song'
require 'verse'

song = Song.new(99, Verse)
song.verses.each {|verse| puts (verse.lyrics + "\n\n")}
