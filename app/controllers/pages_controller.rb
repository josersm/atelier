class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @suppliers = Supplier.all
  end

  def dashboard
		# raise
		if current_user.user_type == "brand"
			# put "it's a brand dashboard"
			@user = Brand.where(user: current_user)
		else
			# put "it's a supplier dashboard"
			@user = Supplier.where(user: current_user)
		end
		# raise
  end
end
