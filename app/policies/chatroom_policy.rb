class ChatroomPolicy < ApplicationPolicy
  def show?
    user_is_brand_of_record? || user_is_supplier_of_record?
  end

  private

  def user_is_brand_of_record?
    record.brand == user.brand
  end

  def user_is_supplier_of_record?
    record.supplier == user.supplier
  end
end
