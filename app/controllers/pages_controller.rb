class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @suppliers = Supplier.all
  end

  def dashboard
		@brands = Brand.where(user: current_user)
    @suppliers = Supplier.all
		raise
  end
end
