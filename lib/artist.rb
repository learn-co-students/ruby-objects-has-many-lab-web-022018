class Artist
  attr_accessor :name, :genre, :songs
  
  @@all_songs=[]
  @@song_count

  def initialize(name)
    @name=name
    @genre
    @songs=[]
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def self.song_count
    @@song_count = @@all_songs.size
    @@song_count
  end

end
