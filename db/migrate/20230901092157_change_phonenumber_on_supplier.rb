class ChangePhonenumberOnSupplier < ActiveRecord::Migration[7.0]
  def change
		change_column(:suppliers, :phone_number, :string)
  end
end
