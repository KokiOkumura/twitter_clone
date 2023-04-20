class Tweet < ApplicationRecord

  validates :text, length: {maximum: 140}, presence: true

  belongs_to :user, dependent: :destroy
end