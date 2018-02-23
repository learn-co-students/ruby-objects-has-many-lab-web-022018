class Artist

  attr_accessor :name, :song


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    if self.song
      self.song.artist
    end


  end
end
