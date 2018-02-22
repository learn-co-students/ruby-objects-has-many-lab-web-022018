class Song
  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    if @artist != nil
      @artist.name
    end
  end
end
