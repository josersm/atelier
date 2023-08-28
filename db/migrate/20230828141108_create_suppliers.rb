class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :country
      t.string :email
      t.integer :phone_number
      t.string :price_rating
      t.float :sustainability_rating
      t.integer :minimum_quantity

      t.timestamps
    end
  end
end
