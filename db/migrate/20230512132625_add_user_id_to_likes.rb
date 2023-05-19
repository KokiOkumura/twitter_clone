class AddUserIdToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :content_id, :integer
  end
end
