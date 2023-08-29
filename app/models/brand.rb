class Brand < ApplicationRecord
  has_many :favorites
  has_many :projects
  has_many :reviews
  has_many :favorite_suppliers, through: :favorites, source: :supplier
end
