class AddFavouriteToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :favourite, :boolean
  end
end
