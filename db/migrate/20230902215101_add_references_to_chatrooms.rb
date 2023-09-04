class AddReferencesToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :brand, null: false, foreign_key: true
    add_reference :chatrooms, :supplier, null: false, foreign_key: true
  end
end
