class FavoritePolicy < ApplicationPolicy

  def create?
    @record.brand.user == @user
  end
  
  def compare?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
