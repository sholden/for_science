class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links, id: false do |t|
      t.string :id
      t.string :domain
      t.string :banned_by
      t.integer :media_embed
      t.string :subreddit
      t.string :selftext_html
      t.string :selftext
      t.string :likes
      t.string :secure_media
      t.string :link_flair_text
      t.integer :secure_media_embed
      t.integer :clicked
      t.integer :stickied
      t.string :author
      t.string :media
      t.integer :score
      t.string :approved_by
      t.integer :over_18
      t.integer :hidden
      t.string :thumbnail
      t.string :subreddit_id
      t.integer :edited
      t.string :link_flair_css_class
      t.string :author_flair_css_class
      t.integer :downs
      t.integer :saved
      t.integer :is_self
      t.string :permalink
      t.string :name
      t.integer :created
      t.string :url
      t.string :author_flair_text
      t.string :title
      t.integer :created_utc
      t.integer :ups
      t.integer :num_comments
      t.integer :visited
      t.string :num_reports
      t.string :distinguished
      t.string :kind

      t.timestamps
    end
  end
end
