class Genre
    attr_reader :name

    @@all = []

    def initialize( name )
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        arr = []
        Song.all.each do |song|
            if song.genre == self
                arr << song
            end
        end
        arr
    end

    def artists
        Artist.all
    end
end