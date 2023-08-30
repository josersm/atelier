class ReviewPolicy < ApplicationPolicy
  def new?
    !user.nil?
  end

  def create?
    true
  end
end
