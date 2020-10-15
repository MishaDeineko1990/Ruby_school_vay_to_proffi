class Song 

    @@plays = 0 

    def play
        @@plays += 1
    end

    def totall_plays
        @@plays
    end

end

s1 = Song.new
s2 = Song.new
s3 = Song.new

s1.play
s1.play

p s3.totall_plays


# Good = "all fine"  //constant
# $dolar = // global wriable
# @classss = // class global variable
# @@instance = // globall variable for all instances for class
# local = // local variable