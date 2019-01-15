#! usr/env/bin ruby

def ascii_value_for_outside_range(
	letter, crypt_key, is_lowercase)
	if is_lowercase
		return 97 + ((letter.ord + crypt_key - 97) % 26)
	else
		return 65 + ((letter.ord + crypt_key - 65) % 26)
	end
end

def letter_encoder(letter, crypt_key)
	is_lowercase = /[[:lower:]]/.match(letter) ? true : false 
	ascii_range = is_lowercase ? (97..122) : (65..90)
	if ascii_range.to_a.include?(letter.ord + crypt_key) 
		return (letter.ord + crypt_key).chr
	else
		return ascii_value_for_outside_range(
			letter, crypt_key, is_lowercase).chr
	end
end

def letter?(character)
	!!(character =~ /[[:alpha:]]/)
end

def caesar_cipher(sentence, crypt_key)
	crypt_sentence= ""
	sentence.each_char do |character|
	if letter?(character)
		crypt_sentence << letter_encoder(character, crypt_key)
	else
		crypt_sentence << character
	end
	end
	return crypt_sentence
end
