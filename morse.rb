#to open: ruby morse.rb text.txt
class Morse
  attr_accessor  :text

@@morse_hsh = { "a"=>"._",    "b"=>"_...",  "c"=>"_._.",
              "d"=>"_..",   "e"=>".",     "f"=>".._.",
              "g"=>"__.",   "h"=>"....",  "i"=>"..",
              "j"=>".___",  "k"=>"_._",   "l"=>"._..",
              "m"=>"__",    "n"=>"_.",    "o"=>"___",
              "p"=>".__.",  "q"=>"__._",  "r"=>"._.",
              "s"=>"...",   "t"=>"_",     "u"=>".._",
              "v"=>"..._",  "w"=>".__",   "x"=>"_.._",
              "y"=>"_.__",  "z"=>"__.",   "0"=>"_____",
              "1"=>".____", "2"=>"..____","3"=>"...__",
              "4"=>"...._", "5"=>".....", "6"=>"_....",
              "7"=>"__...", "8"=>"___..", "9"=>"____."}

def initialize(file)
  @text=File.open(file, 'r').read
end

def words_to_morse
    @text.downcase.split("").each { |letter| print "#{@@morse_hsh[letter]} " }
end

end

Morse.new(ARGV[0]).words_to_morse
