class Artist
  @@all = []

  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@all << self
  end
  def songs
    @songs
  end
  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
    @@all << self
  end
  def self.song_count
    @@song_count = 0
    @@all.each do |artist|
      @@song_count += artist.songs.size
    end
    @@song_count
  end
end
