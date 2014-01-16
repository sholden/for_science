class CreateWordCounts < ActiveRecord::Migration
  def change
    create_table :word_counts do |t|
      t.string :word
      t.integer :count
      t.string :link_id
      t.string :comment_id

      t.timestamps

      t.index :link_id
      t.index :comment_id
      t.index :word
    end
  end
end
