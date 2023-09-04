class AddPriceToProductAndDeliverDateToProject < ActiveRecord::Migration[7.0]
  def change
		add_column :products, :price, :integer
		add_column :projects, :delivery_date, :date
  end
end
