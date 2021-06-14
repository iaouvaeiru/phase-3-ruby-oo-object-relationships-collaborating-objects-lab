class Artist
    @@all = []
    def self.all
        @@all
    end
    attr_accessor :name, :songs
    def initialize(name)
        @name = name
        @songs = songs
        @@all << self
    end
    def songs 
        Song.all.filter {|song| song.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def self.find_or_create_by_name(artist_name)
        if self.all.find{|artist| artist.name == artist_name}
            self.all.find{|artist| artist.name == artist_name}
        else
            Artist.new(artist_name)
        end
    end
    def print_songs
        songs.each {|song| puts song.name}
    end
end