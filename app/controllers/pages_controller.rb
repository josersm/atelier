class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :inbox]
  def home
    @suppliers = Supplier.all
  end

  def dashboard
		@user = current_user
  end

  def inbox
    @chatrooms = current_user.chatrooms
  end
end
