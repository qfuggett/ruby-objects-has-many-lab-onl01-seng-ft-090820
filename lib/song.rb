class Song
  attr_accessor :name, :artist
  
  @@all = [ ]

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def add_song_by_name(name)
    Song.all.select {|name| name.artist == self}
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if artist
      self.artist.name          #knows the name of its artist
    else nil
    end
  end
  
end