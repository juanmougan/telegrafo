class Post < ApplicationRecord
  validates :title, :author, :body, :presence => true
  has_and_belongs_to_many :categories
end
