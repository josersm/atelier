class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :brand
  belongs_to :supplier

  def other_party(user)
    if user.brand && self.brand_id == user.brand.id
      return self.supplier
    elsif user.supplier && self.supplier_id == user.supplier.id
      return self.brand
    end
  end
end
