require 'pry'
class Song 
    @@count = 0
    @@artists = []
    @@genres = [] 
    def initialize(song_name, artist, genre)
        @name = song_name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end
    attr_accessor :name, :artist, :genre
    
    def self.count 
        @@count
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.genres 
        @@genres.uniq
    end 
    
    def self.count_into_hash(array) 
        array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    end 

    def self.genre_count 
        genre_hash =  self.count_into_hash(@@genres) 
    end 

    def self.artist_count 
        artist_hash = self.count_into_hash(@@artists) 
    end 



end 