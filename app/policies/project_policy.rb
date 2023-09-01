class ProjectPolicy < ApplicationPolicy

  def show?
    record.user == user
  end

  def create?
    !user.nil?
  end

  def update?
    true #record.user == user
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
