require 'pry'
class Song 
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize (name, artist, genre)
        @name = name
         @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        my_hash = {}
        # #genre and amount of times it appears
        # genre
        # genre_appearance = 0 
        # genre_appearance += 1 each time a genre is added.
        @@genres.each { |genre|
            if my_hash[genre] 
                my_hash[genre] += 1
            else 
                my_hash[genre] = 1
            end
        }
        my_hash
    end
    
    def self.artist_count
        my_hash = {}
        
        @@artists.each { |artist|
            if my_hash[artist] 
                my_hash[artist] += 1
            else 
                my_hash[artist] = 1
            end
        }
        my_hash
    end
end