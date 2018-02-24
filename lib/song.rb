class Song

  def initialize(title)
    @title = title
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def name
    @title
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end

end
