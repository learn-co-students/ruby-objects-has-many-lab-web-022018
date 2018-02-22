class Artist
  
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def all
    @songs
  end
  
  def add_song(song)
    self.all << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    self.add_song(song)
  end
  
  def self.song_count
    @@song_count
  end
end