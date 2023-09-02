class ChatroomPolicy < ApplicationPolicy
  def show?
    record.brand == user.brand || record.supplier == user.supplier
  end
end
