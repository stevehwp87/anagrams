# # File.open("db/data/words").each_line do |line|
# #   Word.create(word: line.gsub("\n", ""))
# # end

# File.open("db/data/words").each_line do |word|
#   (word, DATETIME("now"), DATETIME("now"))
# end



## DESTROY ALL IN TABLE
# string = "DELETE FROM words"
# ActiveRecord::Base.connection.execute(string)


## SEED TABLE
# generate string first
string = "INSERT INTO words (word, created_at, updated_at, canonical_word) VALUES "

# seed here
count = 0
File.open("db/data/words").each_line do |word|
    string << "(\'#{word.chomp}\', \'#{Time.now}\', \'#{Time.now}\', \'#{word.chomp.downcase.split("").sort.join}\')"
    string << ","
    count += 1
    p count if count%200 == 0
end

string = string[0...-1]

ActiveRecord::Base.connection.execute(string)