# File compression algorithm generates following imperfect compression string
# a5b123b9c10d15x14 <-- Imperfect compression string
# a9b15c12 <-- Perfect compression string
# Generate perfect compression string by accepting Imperfect compression string

imperfect_string = "x1a5b123b9c10c7c4d15x14a12"
imperfect_occurences = imperfect_string.split(/[a-z]+/)
imperfect_occurences.shift # To remove empty string after split at start
# p imperfect_occurences
imp_chars = imperfect_string.split(/[\d]+/)
# p imp_chars

# This will generate pairs as (character, occurence)
imperfect_character_occurence_pair = imp_chars.zip(imperfect_occurences) 

perfect_hash = Hash.new

imperfect_character_occurence_pair.each do |char, occur|
  if perfect_hash.has_key?(char)
    perfect_hash[char] += occur.to_i
  else
    perfect_hash[char] = occur.to_i
  end
end

perfect_string = String.new
perfect_hash_sorted = perfect_hash.sort.to_h

# Converting hash to string
perfect_hash_sorted.each do |key, value|
  perfect_string += key+value.to_s
end

p perfect_hash
puts "Imperfect string entered is: " + imperfect_string
puts "Perfect string generated is: " + perfect_string