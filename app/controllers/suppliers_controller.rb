class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
<<<<<<< HEAD

    @suppliers = policy_scope(Supplier)

    @suppliers = Supplier.all

=======
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
>>>>>>> 3f0aa38cb45175836e01f2309796e523c306e291
  end

  def show
    @favorite = Favorite.new
    @supplier = Supplier.find(params[:id])

    @review = Review.new
    @reviews = @supplier.reviews
    @markers = [{
      lat: @supplier.latitude,
      lng: @supplier.longitude
    }]
    authorize @supplier

  end

  def new
    @supplier = Supplier.new
    authorize @supplier
  end
end
