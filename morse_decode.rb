def char_decode(char)
    morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
              '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
              '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
              '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
              '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
              '---..' => '8', '----.' => '9', '-----' => '0' }
    
    char_decode[char]
end

char_decode('.-')
# => A

def word_decode(string)
    return_string = ''
    chars = string.split
    chars.each { |letter| return_string += char_decode(letter) }
    return_string
end
  
decode_word('-. --- ... - ..-.')
# => MORSE

def decode_message(message)
    return_message = ''
    words = message.gsub('/', ' ').split('   ')
    words.each { |word| return_message += " #{word_decode(word)}" }
    return_message.strip
  end
  
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => A BOX FULL OF RUBIES
