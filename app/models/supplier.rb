class Supplier < ApplicationRecord
	belongs_to :user
  has_many :favorites
  has_many :projects
  has_many :reviews
  has_many :supplier_materials
  has_many :favoriting_brands, through: :favorites, source: :brand

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
end
