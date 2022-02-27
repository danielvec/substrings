dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
user_input = gets.chomp
input = user_input.downcase.gsub(/[^a-z ]/i, '').split(' ')
def substrings(input, dictionary)
    word_list = []
    for i in 0...dictionary.length
        for j in 0...input.length
            if input[j].include? dictionary[i]
                word_list << dictionary[i]
            end
        end
    end
    results = word_list.reduce(Hash.new(0)) do |word, count|
        word[count] += 1
        word
    end
    puts results
end
substrings(input, dictionary)

