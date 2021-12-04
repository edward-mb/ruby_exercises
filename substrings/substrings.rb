# It returns a hash listing each substring (case insensitive) that was found in the text and how many times it was found.
# @note Takes a word as the first argument and then an array of valid substrings as the second argument.
# @return [Hash]
# @param text [String] some random text
# @param dictionary [Array<String>] allowed substrings
# This method smells of :reek:NestedIterators
def substrings(text, dictionary)
  sub_strings = Hash.new(0)
  dictionary.each do |allowed_string|
    text.downcase.scan(/#{allowed_string}/) { |word| sub_strings[word] += 1 if word }
  end
  sub_strings
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings
