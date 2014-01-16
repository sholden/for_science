class Link < ActiveRecord::Base
  self.primary_key = 'id'

  scope :top, -> {order('score desc')}

  has_many :comments, primary_key: :name, foreign_key: :link_id
  has_many :root_comments, class_name: 'Comment', primary_key: :name, foreign_key: :parent_id
end
