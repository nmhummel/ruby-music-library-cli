
class Artist

    @@all = []
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.destroy_all
        @@all.clear
    end

    def self.create(name)
        artist = new(name)
        artist.save
        artist
    end



end