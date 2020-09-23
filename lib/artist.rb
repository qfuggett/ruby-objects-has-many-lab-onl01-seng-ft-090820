class Artist
  attr_accessor :name, :new
  
  @@song_count = 0         #class method
  
  def initialize(name)
    @name = name
  end
  
  
  def add_song(song)
    self.songs << song        #pushing the song argument to 
    song.artist = self        #associates song with artist
    @@song_count += 1
  end
  
  
  def songs
    Song.all.select {|song| song.artist == self}
    #retrieves all songs from the Song class that is associated with the artist
  end
  
  
  def add_song_by_name(name)
    song = Song.new(name)     #creates a new song with given argument on the Song class
    add_song(song)            #thereby associating the song with the artist
    @@song_count += 1
  end
  
  
  def self.song_count
    @@song_count              #returns total number of songs 
  end
  
  
end