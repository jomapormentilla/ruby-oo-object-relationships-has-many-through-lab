class Artist
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
            if song.artist == self
                arr << song
            end
        end
        arr
    end

    def new_song( name, genre )
        Song.new( name, self, genre )
    end

    def genres
        mysongs = songs
        arr = []
        mysongs.each do |song|
            arr << song.genre
        end

        arr
    end
end