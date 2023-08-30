class AddForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
		add_reference :brands, :user, index: true
		add_reference :suppliers, :user, index: true
  end
end
