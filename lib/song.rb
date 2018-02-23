class Song
  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def artist_name
    if self.artist
       self.artist.name
    else
      nil
    end
  end

  def self.song_count
    @@song_count = 0
  end

end
