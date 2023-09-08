class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    if params[:chatroom_id].present?
      chatroom = Chatroom.find(params[:chatroom_id])
      stream_for chatroom
    else
      reject
    end
  end
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
