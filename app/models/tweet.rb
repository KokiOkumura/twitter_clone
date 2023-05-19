class Tweet < ApplicationRecord

  validates :text, length: {maximum: 140}, presence: true

  belongs_to :user, dependent: :destroy
  has_many :comments
  has_many :likes, as: :content
end
