class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :company_name
      t.string :bic_number
      t.string :email
      t.integer :contact_number
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
