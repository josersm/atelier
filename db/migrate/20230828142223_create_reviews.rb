class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :comment
      t.references :brand, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
