
def sort_array_asc(array)
  array.sort {|a, b|a <=> b }
end
# Comparing Arrays
def sort_array_desc(array)
  array.sort {|a, b|b <=> a }
end

def sort_array_char_count(words)
  words.sort {|a, b|a.length <=> b.length }
end

def swap_elements(array)
# swaps the second and third elements
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index_a, index_b)
  array[index_a], array[index_b] = array[index_b], array[index_a]
  array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
# takes in an array of strings and replaces the third
# character in each string with a $
  keshified_words = []
  array.each do |words|
    words_array = words.split("")
    words_array[2] = "$"
    keshified_words << words_array.join
  end
  keshified_words
end

def find_a(word_array)
# returns all the strings in the array passed to it
# that start_with? (hint) the letter "a"
    word_array.select{|word| word.start_with?("a")}
end

def sum_array(numbers)
# adds together all intergers and returns the sum
  numbers.inject(:+)
end

def add_s(array)
# adds an "s" to each word in the array except for the
# second element in the array
  array.each_with_index.collect do |word, index|
    if index == 1
      word
    else
      word << "s"
    end
  end
end
