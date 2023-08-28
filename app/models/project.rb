class Project < ApplicationRecord
  belongs_to :brand
  belongs_to :supplier
  has_many :products
end
