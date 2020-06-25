dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  arr = string.downcase.split(" ")
  word_count = dictionary.reduce(Hash.new(0)) do |acc, dict_word|
    for word in arr do
      if word.include?(dict_word) 
        acc[dict_word] == nil ? acc[dict_word] = 1 : acc[dict_word] += 1
      end
    end
    acc
  end
  p word_count
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)