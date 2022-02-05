class Comment < ApplicationRecord
  belongs_to :post
  validates :body, :author, :presence => true
end
