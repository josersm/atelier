class Review < ApplicationRecord
  belongs_to :brand
  belongs_to :supplier

  validates :rating, presence: true
  validates :brand_id, presence: true
  validates :supplier_id, presence: true
  validates :user_id, presence: true
  validates :rating, inclusion: { in: 1..5 }




end
