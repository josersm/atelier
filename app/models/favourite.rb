class Favourite < ApplicationRecord
  belongs_to :brand
  belongs_to :supplier
end
