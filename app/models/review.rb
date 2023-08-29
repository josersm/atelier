class Review < ApplicationRecord
  # belongs_to :brand
  # belongs_to :supplier

  # validates :rating, presence: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :brand_id, presence: true
  # validates :supplier_id, presence: true
  # validates :brand_id, uniqueness: { scope: :supplier_id, message: "has already been reviewed by this supplier" }

end
