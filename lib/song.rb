class Song
    attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []


def initialize (name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@genre_count = {}
    @@artist_count = {}
end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count
    @@genres.each do |genre|
       num = @@genres.count(genre)
        @@genre_count[genre] = num
    end
@@genre_count
end 

def self.artist_count
    @@artists.each do |artist|
        num = @@artists.count(artist)
         @@artist_count[artist] = num
     end
 @@artist_count
 end 

end


