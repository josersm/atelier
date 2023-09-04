class Material < ApplicationRecord
  has_many :suppliers, through: :supplier_materials

  MATERIALS = [
    "cotton", "polyester", "cashmere", "linen", "Silk", "Wool", "Leather",
    "Denim", "Velvet", "Nylon", "Spandex", "Rayon", "Satin", "Chiffon", "Tulle",
    "Fleece", "Tweed", "Corduroy", "Lace", "Suede", "Jacquard", "Chambray", "Organza"
  ]
  validates :name, inclusion: { in: MATERIALS }
end
