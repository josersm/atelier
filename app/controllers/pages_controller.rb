class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :inbox]
  def home
    @suppliers = Supplier.all

    @countries = Supplier.distinct.pluck(:country)
    @min_value = Supplier.minimum(:minimum_quantity)
    @max_value = Supplier.maximum(:minimum_quantity)

    @suppliers = policy_scope(Supplier)

    if params[:country].present?
      @suppliers = @suppliers.where("country ILIKE ?", "%#{params[:country]}%")
    end

    if params[:price_rating].present?
      @suppliers = @suppliers.where(price_rating: params[:price_rating])
    end

    if params[:sustainability_rating].present?
      @suppliers = @suppliers.where(sustainability_rating: params[:sustainability_rating])
    end

    if params[:minimum_quantity].present? && params[:max_quantity].present?
      @suppliers = @suppliers.where("minimum_quantity BETWEEN ? AND ?", params[:minimum_quantity], params[:max_quantity])
    end
  end


  def dashboard
   puts "just hit dashboard controller"
   puts current_user
   puts "this is the supplier"
   puts current_user.supplier
   puts "this is the brand"
   puts current_user.brand
   #puts @brand.projects




		@user = current_user
    @supplier = current_user.supplier
    @brand = current_user.brand
    @projects = @brand.projects
  end

  def inbox
    @chatrooms = current_user.chatrooms
  end
end
