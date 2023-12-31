class SupplierPolicy < ApplicationPolicy
  def show?
    true
  end

  def new?
    !user.nil?
  end

  def create?
    # !user.nil?
		true
  end

  def edit?
    true #record.user == user
  end

  def update?
    true #record.user == user
  end

  def destroy?
    true #record.user == user
  end

  def num_suppliers_worked_with?
    user.present?
    true #record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
