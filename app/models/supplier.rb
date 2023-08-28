class Supplier < ApplicationRecord
  has_many :favourites
  has_many :projects
  has_many :reviews
  has_many :supplier_materials
end
