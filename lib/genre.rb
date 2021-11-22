require 'pry'

class Genre

        attr_accessor :name

        @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
        end

        def songs
            Song.all.select {|song_instances| song_instances.genre == self}
        end

        def artists
            songs.collect {|song_instances| song_instances.artist}
        end


end