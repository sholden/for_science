class Comment < ActiveRecord::Base
  self.primary_key = :id

  belongs_to :link, primary_key: :name, foreign_key: :link_id
  belongs_to :parent, class_name: 'Comment', primary_key: :name, foreign_key: :parent_id
  has_many :replies, class_name: 'Comment', primary_key: :name, foreign_key: :parent_id

  def self.training_data
    Comment.group(:link_id, :author).count.map{|(link, author), count| [link, author, count]}
  end
end
