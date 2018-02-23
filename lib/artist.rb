require_relative 'song'

class Artist

  @@song_count = 0
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@song_count
  end
end
