#!/usr/bin/env ruby
dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

def substrings(string, dict)
	output = Hash.new
	str = string.split(" ")
	str.each do |word_from_str|
	dict.each do |word|
		word_from_str.downcase!
		if word_from_str.include? word
			if output[word] == nil
				output[word] = 1
			else
				output[word] = output[word] + 1
			end
		end
	end
	end
	output
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)