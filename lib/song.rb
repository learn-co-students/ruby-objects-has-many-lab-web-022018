class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
    @artist
  end

  def artist_name
    @artist ? @artist.name : nil
  end
end
