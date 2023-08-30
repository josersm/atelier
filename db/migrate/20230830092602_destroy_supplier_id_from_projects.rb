class DestroySupplierIdFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :supplier_id, :integer
  end
end
