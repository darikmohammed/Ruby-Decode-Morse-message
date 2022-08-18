MORSE_CODE = {
    ' '=>' ',
    '.-'=>'A',
    '-...'=>'B',
    '-.-.'=>'C',
    '-..' =>'D', 
    '.' =>'E', 
    '..-.' =>'F',
    '--.' =>'G', 
    '....' =>'H', 
    '..' =>'I', 
    '.---' =>'J', 
    '-.-' =>'K', 
    '.-..' =>'L', 
    '--' =>'M', 
    '-.' =>'N', 
    '---' =>'O', 
    '.--.' =>'P', 
    '--.-' =>'Q', 
    '.-.' =>'R', 
    '...' =>'S', 
    '-' =>'T', 
    '..-' =>'U', 
    '...-' =>'V', 
    '.--' =>'W', 
    '-..-' =>'X', 
    '-.--' =>'Y', 
    '--..' =>'Z', 

    '.----' =>'1', 
    '..---' =>'2', 
    '...--' =>'3', 
    '....-' =>'4', 
    '.....' =>'5', 
    '-....' =>'6', 
    '--...' =>'7', 
    '---..' =>'8', 
    '----.' =>'9', 
    '-----' =>'0', 

}

def decode_char(morse_code)
    MORSE_CODE[morse_code]
end

decode_char(".-")

def decode_word(morse_word)
    morse_chars = morse_word.split(' ')
    decode_word =''
    morse_chars.each do |morse_code|
        decode_word += decode_char(morse_code)
    end
    decode_word
end
    
decode_word("-- -.--") 

def decode(morse_code)
    morse_words = morse_code.split('   ')
    decode_message = []
    morse_words.each do |word|
        decode_message.push(decode_word(word)) 
    end
    decode_message * " "
end

 decode("-- -.--   -. .- -- .")
 decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')