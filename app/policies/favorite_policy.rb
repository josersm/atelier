class FavoritePolicy < ApplicationPolicy
  def index?
    record.brand.user == user
  end
end
