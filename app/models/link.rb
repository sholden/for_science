class Link < ActiveRecord::Base
  self.primary_key = 'id'

  scope :top, -> {order('score desc')}
end
