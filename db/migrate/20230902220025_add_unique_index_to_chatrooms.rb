class AddUniqueIndexToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_index :chatrooms, [:brand_id, :supplier_id], unique: true
  end
end
