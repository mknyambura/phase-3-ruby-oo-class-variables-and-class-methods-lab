class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}
  
    def initialize(name,artist,genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
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
      @@genre_count = @@genres.tally
    end
  
    def self.artist_count
        @@artists.uniq.each do |count|
            @@artist_count[count] = @@artists.count(count)
        end
        @@artist_count
    end
end