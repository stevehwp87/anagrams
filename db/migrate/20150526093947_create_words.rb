class CreateWords < ActiveRecord::Migration
  def change
     create_table :words do |word|
      word.string :word
      word.datetime :created_at
      word.datetime :updated_at
    end
  end
end
