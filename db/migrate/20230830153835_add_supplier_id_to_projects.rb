class AddSupplierIdToProjects < ActiveRecord::Migration[7.0]
  def change
		add_reference :projects, :supplier, index: true
  end
end
