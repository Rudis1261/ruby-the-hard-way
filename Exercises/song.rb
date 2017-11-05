class Song

    def initialize(lyrics = nil)
        if lyrics != nil
            @lyrics = lyrics
        end
    end

    attr_reader :lyrics

    def sing_me_a_song(lyrics = nil)
        if lyrics != nil
            @lyrics = lyrics
        end
        @lyrics.each {|line| puts line }
    end

end

# happy_bday = Song.new(["Happy birthday to you", "I don't want to get sued", "So I'll stop right there"])
# bulls_on_parade = Song.new(["They rally around tha family", "With pockets full of shells"])
# mary_had_a_little_lamb = Song.new(["Mary had a little lamb", "Whose flees was white as snow"]);

# happy_bday.sing_me_a_song()
# bulls_on_parade.sing_me_a_song()
#mary_had_a_little_lamb.sing_me_a_song()

test = Song.new()
#lyrics = ["Mary had a little lamb", "Whose flees was white as snow"]
test.lyrics = ["Mary had a little lamb", "Whose flees was white as snow"]
test.sing_me_a_song()