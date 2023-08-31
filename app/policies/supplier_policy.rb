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

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
