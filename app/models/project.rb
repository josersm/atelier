class Project < ApplicationRecord
  belongs_to :brand
  has_many :products

  STATUS = [
		"pending",
		"start samples",
		"delivery and comment of samples",
		"samples accepted",
		"start of the production",
		"delivery of the production"
	]
end
