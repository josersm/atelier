class ProjectPolicy < ApplicationPolicy

  def show?
    true
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

  def num_projects_worked_on?
    user.present?
    true #record.user == user
  end 

  class Scope < Scope
    def resolve
      scope.where(brand_id: user.brand)
    end
  end
end
