class ProductPolicy < ApplicationPolicy

  def show?
    true
  end

  def create?
    !user.nil?
  end

  def update?
    record.project.brand = user.brand
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
