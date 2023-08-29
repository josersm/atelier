class RemoveFavouriteFromSuppliers < ActiveRecord::Migration[7.0]
  def change
    remove_column :suppliers, :favourite
  end
end
