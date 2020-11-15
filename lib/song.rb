
class Song

    @@all =[]
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
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
        song = new(name)
        song.save
        song
    end

end