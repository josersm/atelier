class ChatroomsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show, :create], if: -> { Rails.env.development? || Rails.env.test? }
  def show
    @supplier = Supplier.find(params[:supplier_id])
    @chatroom = Chatroom.find_or_create_by(brand: current_user.brand, supplier: @supplier)
    @message = Message.new
  end

end
