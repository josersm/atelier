class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_one :brand
	has_one :supplier
  USER = ["supplier", "brand"]
  validates :user_type, inclusion: { in: USER }
  def chatrooms
    case user_type
    when "brand"
      brand.chatrooms
    when "supplier"
      supplier.chatrooms
    else
      []
    end
  end
end
