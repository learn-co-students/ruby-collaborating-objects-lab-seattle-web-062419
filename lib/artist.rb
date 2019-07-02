class Artist
    attr_accessor :name, :songs
    @@all=[]

    def initialize(name)
        @name=name
        @songs=[]
        @@all<<self
    end

    def self.find_or_create_by_name(name)
         @@all.each do |artist|
            if artist.name == name
                return artist
            end
        end
        return Artist.new(name)
    end
        


    def add_song(song)
        Song.new(song)
        self.songs<<song
        self.songs
    end

    def self.all
        @@all
    end

    def save
       
    end

    

    def print_songs
        songs.each do |song|
            puts song.name
        end
     
    end
            
end