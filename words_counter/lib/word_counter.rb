#! usr/env/bin ruby
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def words_counter(corpus_string, dict_array)
	words = corpus_string.downcase.split(/\W+/)

	words_count_hash = Hash.new { |hash, word_key| hash[word_key] = 
		words.count(word_key)}

	dict_array.each	do |searched_word|
		words_count_hash[searched_word]
		words_count_hash.keep_if  {|word_key, count_value| !count_value.zero?}
	end

	puts words_count_hash

	return words_count_hash
end

puts "="*60
puts "NUMBER OF WORD IN SHAKESPEARE CORPUS"
puts "="*60
puts
puts "DICTIONARY"
puts dictionnary.join(" ").inspect
puts
words_counter(IO.read("shakespeare.txt"), dictionnary)
puts

insults_array = IO.read("insults.txt").downcase.split(/\W+/)

puts 
puts "="*60
puts "NUMBER OF INSULTS IN SHAKESPEARE CORPUS"
puts "="*60
puts
puts "DICTIONARY"
puts insults_array.join(" ").inspect
puts
words_counter(IO.read("shakespeare.txt"), insults_array)
puts
puts "END"
puts 




# def perform

# puts dictionary = ["below", "down", "go", 
# 	"going", "horn", "how", "howdy", "it", "i", 
# 	"low", "own", "part", "partner", "sit"]

# # puts "new sentence : below"	
# # puts word_counter("below", dictionary)
# # => {"below"=>1, "low"=>1}

# # puts "="*60
# puts "new sentence : Howdy partner, sit down! How's it going?"
# puts word_counter("Howdy partner, sit down! How's it going?", 
# 	dictionary)

# end

# perform
# => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, 
# 	"going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,
# 	"partner"=>1,"sit"=>1}