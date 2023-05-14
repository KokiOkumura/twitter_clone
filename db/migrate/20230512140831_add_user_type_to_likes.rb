class AddUserTypeToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :user_type, :string
  end
end
