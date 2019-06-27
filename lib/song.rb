class Song
    attr_accessor :name, :artist, :genre

    def initialize (name)
        @name = name
    end
    def self.new_by_filename(filename)
        artistName = filename.split(" - ")[0].strip
        name = filename.split(" - ")[1].strip
        genre = filename.split(" - ")[2].strip.chomp(".mp3")
        artist = Artist.find_or_create_by_name(artistName)
        newSong = Song.new(name)
        artist.add_song(newSong)
        #newSong.genre = genre
        newSong
    end


end

# h = Song.new_by_filename("Real Estate - It's Real - hip-hop.mp3")
# puts h.name
# puts h.genre
# puts h.artist