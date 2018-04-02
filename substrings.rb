dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  results = Hash.new(0)
  strings = text.downcase.split(/\W/)
    strings.each do |string|
      dictionary.each do |word|
        string.include?(word) ? results[word] += 1 : nil
      end  
    end
puts results
end

text = "below"
substrings(text, dictionary)

text = "Howdy partner, sit down! How's it going?"
substrings(text, dictionary)


