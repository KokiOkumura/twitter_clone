class Comment < ApplicationRecord

  validates :text, length: {maximum: 140}, presence: true

  belongs_to :user
  belongs_to :tweet
  has_many :likes, as: :user

end
