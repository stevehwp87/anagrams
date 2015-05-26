class CreateCanonicalWords < ActiveRecord::Migration
  def change
    change_table :words do |word|
      word.string :canonical_word
    end
  end
end
