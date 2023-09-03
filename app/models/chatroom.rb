class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :brand
  belongs_to :supplier
end
