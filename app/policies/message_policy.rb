class MessagePolicy < ApplicationPolicy
  def create?
    user_is_part_of_chatroom?
  end

  private

  def user_is_part_of_chatroom?
    chatroom = record.chatroom
    chatroom.brand == user.brand || chatroom.supplier == user.supplier
  end
end
