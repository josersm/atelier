class SupplierMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :supplier
end
