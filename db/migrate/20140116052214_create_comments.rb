class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, id: false do |t|
      t.string :subreddit_id
      t.string :banned_by
      t.string :subreddit
      t.string :likes
      t.string :saved
      t.string :id, primary_key: true
      t.string :gilded
      t.string :author
      t.string :parent_id
      t.string :approved_by
      t.string :body
      t.string :edited
      t.string :author_flair_css_class
      t.string :downs
      t.string :body_html
      t.string :link_id
      t.string :score_hidden
      t.string :name
      t.string :created
      t.string :author_flair_text
      t.string :created_utc
      t.string :distinguished
      t.string :num_reports
      t.string :ups
      t.string :kind
      t.timestamps
    end
  end
end
