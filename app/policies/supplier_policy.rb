class SupplierPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true  # or further restrict based on your requirements
  end

  def new?
    !user.nil?
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

  class Scope < Scope
    def resolve
      scope.all  # Adjust this if there are specific scopes for suppliers based on the user.
    end
  end
end
