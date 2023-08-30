class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)

  belongs_to :brand
  belongs_to :supplier

  validates :rating, presence: true
  validates :brand_id, presence: true
  validates :supplier_id, presence: true
  validates :rating, inclusion:  { in: AUTHORIZED_RATINGS }

end
