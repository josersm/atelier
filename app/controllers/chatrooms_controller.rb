class ChatroomsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show, :create], if: -> { Rails.env.development? || Rails.env.test? }
  def show
    @supplier = Supplier.find(params[:supplier_id])
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
