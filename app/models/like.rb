class Like < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :content, polymorphic: true

  validates_uniqueness_of :content_type, scope: :content_id
end
