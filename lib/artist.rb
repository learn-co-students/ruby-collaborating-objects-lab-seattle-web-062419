class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end
    # def self.create_by_name(name)
    #     newArtist = Artist.new
    #     newArtist.name = name
    #     @@all << newArtist
    #     newArtist
    # end

    def self.find_or_create_by_name(name)
        foundArtist = find_by_name(name)
        if foundArtist == nil
            foundArtist = Artist.new(name)
        end
        foundArtist
    end

    def self.find_by_name(name)
        foundArtist = @@all.find do |artist|
          artist.name == name
        end
        foundArtist
    end

    def add_song(some_song)
        some_song.artist = self
        @songs << some_song
        @songs
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end
