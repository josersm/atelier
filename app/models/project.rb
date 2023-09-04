class Project < ApplicationRecord
  belongs_to :brand
  has_many :products
  belongs_to :supplier
  STATUS = [
		"pending",
		"accepted",
		"samples construction",
		"delivery of samples",
		"start of production",
		"delivery of production"
	]
  validates :status, inclusion: { in: STATUS }

  DELIVERY_MODE = [
		"Standard Delivery",
		"Express Delivery",
		"Eco Delivery"
	]
  validates :status, inclusion: { in: STATUS }
  validates :delivery_mode, inclusion: { in: DELIVERY_MODE }
end
