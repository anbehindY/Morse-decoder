# Method for decoding a Morse code character
def decode_char(char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
    '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  morse_code.each { |key, value| return value if key == char }
end

puts "\"#{decode_char '.-'}\"" # => "A"

# Method for decoding an entire word in Morse code
def decode_word(chars)
  chars.split.map { |char| decode_char(char) }.join
end

puts "\"#{decode_word '-- -.--'}\"" # => "MY"

# Method for decoding an entire sentence in Morse code
def decode(chars)
  chars.split('   ').map { |char| decode_word(char) }.join(' ')
end

puts "\"#{decode '-- -.--   -. .- -- .'}\"" # => "MY NAME"

puts "\"#{decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'}\""
# => "A BOX FULL OF RUBIES"
