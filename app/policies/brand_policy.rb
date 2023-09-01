class BrandPolicy < ApplicationPolicy

  def show?
    record.user == user
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

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
