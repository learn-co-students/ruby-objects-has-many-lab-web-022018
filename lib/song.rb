class Song
  attr_accessor :name, :artist
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
  def initialize(name)
    @name = name
  end
end