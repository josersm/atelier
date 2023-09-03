class Project < ApplicationRecord
  belongs_to :brand
  has_many :products

  STATUS = [
		"pending",
		"accepted",
		"samples construction",
		"delivery of samples",
		"start of production",
		"delivery of production"
	]
  validates :status, inclusion: { in: STATUS }
end
