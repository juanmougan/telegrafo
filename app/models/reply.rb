class Reply < ApplicationRecord
  belongs_to :comment
  validates :body, :author, :presence => true
end
