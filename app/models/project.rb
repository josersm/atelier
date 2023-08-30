class Project < ApplicationRecord
  belongs_to :brand
  belongs_to :supplier
  has_many :products

  STATUS = [
		"request",
		"start samples",
		"delivery and comment of samples",
		"samples accepted",
		"start of the production",
		"delivery of the production"
	]
  validates :user_type, inclusion: { in: STATUS }
end
