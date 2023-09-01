class ProjectPolicy < ApplicationPolicy

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

  class Scope < Scope
    def resolve
      scope.where(brand_id: user.brand)
    end
  end
end
