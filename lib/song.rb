require 'pry'
class Song
# create a class song, that keeps track of the songs created and has a method
# that gets the @@song list variable 
@@count=0
@@artists = []
@@genres = []


attr_accessor :name, :genre, :artist

def initialize(name, artist, genre)
    @name=name
    @genre=genre
    @artist=artist
    @@count += 1
    @@artists << @artist 
    @@genres << @genre
end

def self.count
    @@count 
end

def self.artists
   @@artists.uniq()
end

def self.genres
    @@genres.uniq()
end

def self.genre_count
    genre_count_hash={}
    @@genres.each do |genre|
        if genre_count_hash[genre]
            genre_count_hash[genre] += 1
        else
            genre_count_hash[genre] = 1
        end
    end
    genre_count_hash
end

def self.artist_count
    artist_count_hash={}
    @@artists.each do |artist|
        if artist_count_hash[artist]
            artist_count_hash[artist] += 1
        else
            artist_count_hash[artist] = 1
        end
    end
    artist_count_hash
end

end

# binding.pry
0

#alternative solutions: that need to be looked at 

 # @@genres
    # genre_count_hash={}
    # count=0
    # while count < @@genres.length
    #     if !genre_count_hash
    #        genre_count_hash[@@genres[count]]=1
    #     elsif genre_count_hash[@@genres[count]]
    #         genre_count_hash[@@genres[count]] += 1
    #     end
    #     count += 1
    # end
    # return genre_count_hash