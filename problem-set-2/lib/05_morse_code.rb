MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}



# Wanted to try out the chop method just for fun
# A little ugly seeing chop.chop so going to create
# and revise another couple of methods cleanly soon.

# Correct
def morse_encode(str)
  phrase = ""
  if str.include?(" ")
    str = str.split(' ')
    str.each { |word| phrase += encode_word(word) + " " }
    puts phrase
    return phrase.chop.chop
  end
  return encode_word(str).chop
end

# cat
def encode_word(w)
  a = ""
  w.each_char do |letter|
    a += MORSE_CODE[letter] + " "
  end
  a
end

#def encode_word(c)
  #a = []
  #c.each_char do |letter|


    # Build a function, `morse_encode(str)` that takes in a string (no
    # numbers or punctuation) and outputs the morse code for it. See
    # http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
    # words and one space between letters.
    #
    # You'll have to type in morse code: I'd use a hash to map letters to
    # codes. Don't worry about numbers.
    #
    # I wrote a helper method `morse_encode_word(word)` that handled a
    # single word.
    #
    # Difficulty: 2/5






morse_encode("cat in hat")
puts morse_encode("cat")
