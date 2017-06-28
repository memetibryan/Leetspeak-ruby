class String
   define_method(:leetspeak) do
     sentence = self.split("")

     sentence.each do |char|

     	if char.eql?("e") 
     		self.gsub "e", '3'
     		return self
     	end

     	if char.eql?("i")
     		self.gsub "i", '1'
     		return self
     	end

     	if char.eql?("o")
     		self.gsub "o",'0'
     		return self
     	end
     end

     if sentence[0].eql?("s")
     		sliced = self.slice!(0)
     		new_self = self.gsub "s","z"
     		joined_self = sliced.concat(new_self)
     		return joined_self
     	end

     	sentence.join("")
    end
 end

puts "Sahvythfedfoi".leetspeak()
puts "Bryan is handsome".leetspeak()

 # Leetspeak

# Leetspeak uses an alternative alphabet of numbers and symbols to replace various letters in words. For example, "leet" becomes "1337" and "moringa" might become "m0ringa".

# Write a Ruby method on the String class that converts a string using some of the rules of Leetspeak:

#     The letter "e" should be replaced with "3".
#     The letter "o" should be replaced with "0".
#     The capital letter "I" (but not the lower case, "i") should be replaced with "1".
#     All instances of "s" should be replaced with "z" UNLESS it is the first letter of the word.

# Here is a sample of input and output

# In: "Don't you love these 'String' exercises? I do!"
# Out: "D0n't y0u l0ve theze 'String' exercizez? 1 d0!"

# also works but changes only one letter
# ==============================
# class String
#     define_method(:leetspeak) do
#      self.gsub "e",'3'
#     end
#   end
# =============================
# also works
