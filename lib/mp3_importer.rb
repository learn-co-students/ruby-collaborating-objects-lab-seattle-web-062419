require 'pry'
class MP3Importer
    attr_accessor :path, :files

    def initialize (folder)
        @path = folder
        #folder = folder << "/mp3s"
        @files = Dir.entries(folder)
        @files = @files.filter{|file| file.size >= 4}
        @files = @files.filter {|file| file[-4..-1].downcase == ".mp3"}
      
        puts @files
    end



    def import
        @files.each do |filename|
            Song.new_by_filename(filename)
        end
    end

end

h= MP3Importer.new('./spec/fixtures')