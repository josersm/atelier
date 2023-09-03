class Brand < ApplicationRecord
	belongs_to :user
  has_many :favorites, dependent: :delete_all
  has_many :projects
  has_many :reviews
  has_many :favorite_suppliers, through: :favorites, source: :supplier
  has_many :chatrooms
end
