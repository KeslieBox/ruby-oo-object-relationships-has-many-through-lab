require 'pry'

class Genre
    attr_accessor :artist
    attr_reader :name

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
            self == song.genre
        end
    end

    def artists
         Song.all.collect do |song|
            self == song.genre
            song.artist
        end
    end
end