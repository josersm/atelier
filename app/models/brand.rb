class Brand < ApplicationRecord
  has_many :favourites
  has_many :projects
  has_many :reviews
end
