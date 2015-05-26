class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagrams(word)
    anagrams = []
    word_canonical_array = word.downcase.split("").sort.join
    Word.all.each do |line|
      if line.canonical_word == word_canonical_array
        anagrams << line
      end
    end
    anagrams
  end
end