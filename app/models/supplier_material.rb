class SupplierMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :supplier
  MATERIALS = [
    "cotton", "polyester", "cashmere", "linen", "Silk", "Wool", "Leather",
    "Denim", "Velvet", "Nylon", "Spandex", "Rayon", "Satin", "Chiffon", "Tulle",
    "Fleece", "Tweed", "Corduroy", "Lace", "Suede", "Jacquard", "Chambray", "Organza"
  ]
  validates :material_id, uniqueness: { scope: :supplier_id }

end
