#!/usr/bin/env ruby


def caesar_cipher(string, num)
	words = string.split(" ")
	words.collect! do |word|
		letters = word.split("")
		letters.collect! do |letter| 
			if letter.ord >= 97 && letter.ord <= 122
				letter = (((letter.ord - 97 + num) % 26) + 97).chr
			elsif letter.ord >= 65 && letter.ord <= 90
				letter = (((letter.ord - 65 + num) % 26) + 65).chr
			else 
				letter
			end
		end
		word = letters.join("")
	end
	string = words.join(" ")
	puts string
end

caesar_cipher("Hello, my friend", 5)
caesar_cipher("abcde? gfhij! XyzZz", 1)
caesar_cipher("Hello, my friend", -2)