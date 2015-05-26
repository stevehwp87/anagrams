File.open("db/data/words").each_line do |word|
  (word, DATETIME("now"), DATETIME("now"))
end