
class Genre

    @@all =[]
    attr_accessor :name

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
        genre = new(name)
        genre.save
        genre
    end

end