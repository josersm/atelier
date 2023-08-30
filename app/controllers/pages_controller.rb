class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @suppliers = Supplier.all
  end

  def dashboard
		@brand = Brand.find(user: current_user)
    @supplier = Supplier.where(user: current_user)
		raise
  end
end
