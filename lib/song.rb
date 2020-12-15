require_relative 'artist.rb'
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name= name
        @artist= artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(name)
        new_instance = Song.new
        new_instance.artist = self
    end
end
