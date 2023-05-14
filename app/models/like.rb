class Like < ApplicationRecord
  belongs_to :user, dependent: :destroy, polymorphic: true
end
