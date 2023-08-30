class FavoritePolicy < ApplicationPolicy

  def compare?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
