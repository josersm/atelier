class BrandPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    record.user == user
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
