class SupplierMaterialPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    !user.nil?
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
