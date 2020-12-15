require_relative 'song.rb'
class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


   def songs
    Song.all.select do |song|
        song.artist == self
    end
    end

    def add_song(song)
        song.artist = self
    end

    def artist_name=(name)
        self.artist = artist
    end

    def print_songs
        songs.each {|song| puts song.name}
    end

     def self.find_or_create_by_name(name)
     if Artist.all.select do |name|
         name.artist = Artist
     end
    else
        Artist.new
    end
end

end
