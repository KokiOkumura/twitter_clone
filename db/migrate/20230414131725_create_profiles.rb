class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :profile_text
     

      t.references :user

      t.timestamps
    end
  end
end
