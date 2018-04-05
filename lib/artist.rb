require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count = 0


  def initialize(name)
    @name = name
    @songs = []
  end

def add_song(song)
  @songs << song
  
 song.artist = self
end

def add_song_by_name(name)
   s = Song.new(name)
   self.add_song(s)
   s
 end

 def self.song_count
  counter = 0
end
end
