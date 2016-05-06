#class Morse
@morse_hsh = { "a"=>"._",    "b"=>"_...",  "c"=>"_._.",
              "d"=>"_..",   "e"=>".",     "f"=>".._.",
              "g"=>"__.",   "h"=>"....",  "i"=>"..",
              "j"=>".___",  "k"=>"_._",   "l"=>"._..",
              "m"=>"__",    "n"=>"_.",    "o"=>"___",
              "p"=>".__.",  "q"=>"__._",  "r"=>"._.",
              "s"=>"...",   "t"=>"_",     "u"=>".._",
              "v"=>"..._",  "w"=>".__",   "x"=>"_.._",
              "y"=>"_.__",  "z"=>"__."}
#puts morse_hsh.keys

def words_to_morse(text)
  text.split("").each { |letter| print "#{@morse_hsh[letter]} " }
end

text = File.open(ARGV[0]).read
words_to_morse(text)
