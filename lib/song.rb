require "pry"

class Song
        attr_accessor :name, :artist, :genre 
        @@count = 0
        @@artists = []
        @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end


    def self.count
        @@count
    end

    def self.artist_count
        artist_hash = {}
        sorted_artist = @@artists.sort

        sorted_artist.uniq.each do |artist|
            artist_hash[artist] = sorted_artist.count(artist)
        end
        artist_hash
    

    end

    def self.genre_count
        sorted_genres  = @@genres.sort 
        uniq_genres = sorted_genres.uniq
        genre_hash = {}

        uniq_genres.each do |genre|
            genre_hash[genre] = sorted_genres.count(genre)
        end
        genre_hash
    end
    

end