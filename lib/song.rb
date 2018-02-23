class Song
attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end

def artist_name
  artist = nil
  if self.artist
    artist = self.artist.name

  end
  artist
end
end
