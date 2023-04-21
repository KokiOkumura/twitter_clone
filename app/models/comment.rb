class Comment < ApplicationRecord

  validates :text, length: {maximum: 140}, presence: true
  
end
