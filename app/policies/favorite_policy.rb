class FavoritePolicy < ApplicationPolicy
  def create?
    record.brand.user == user
  end

  def compare?
    user.present?
  end

  def destroy?
    record.brand.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
