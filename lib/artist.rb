class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  #the song instance has already been
  #created and is now being added to
  #artist's list of songs

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  #Artist.song = song.rb instance
  #creating instance of song
  #same as add_song, but creating song first

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end

end
