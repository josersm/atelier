class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :project, null: false, foreign_key: true
      t.string :description
      t.integer :quantity_xs
      t.integer :quantity_s
      t.integer :quantity_m
      t.integer :quantity_l
      t.integer :quantity_xl

      t.timestamps
    end
  end
end
