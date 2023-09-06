class ChatroomsController < ApplicationController
  def show
    @supplier = Supplier.find(params[:supplier_id])
    @chatrooms = Chatroom.joins(:messages).group('chatrooms.id').order('MAX(messages.created_at) DESC')
    if current_user.user_type == "brand"
      @chatroom = Chatroom.find_or_create_by(brand: current_user.brand, supplier: @supplier)
    else
      @chatroom = Chatroom.find_or_create_by(supplier: @supplier)
    end

    authorize @chatroom

    if @chatroom.persisted?
      @message = Message.new
    else
      flash[:alert] = "Error creating chatroom. Please try again."
      redirect_to root_path
    end
  end

end
