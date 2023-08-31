class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index

    @suppliers = policy_scope(Supplier)

    @suppliers = Supplier.all
    @markers = @suppliers.geocoded.map do |supplier|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end

    # @markers = @suppliers.geocoded.map do |supplier|
    #   {
    #     lat: supplier.latitude,
    #     lng: supplier.longitude,
    #     info_window_html: render_to_string(partial: "info_window", locals: { supplier: supplier })
    #   }
    end
  end

  def show
    @favorite = Favorite.new
    @supplier = Supplier.find(params[:id])

    @review = Review.new
    @reviews = @supplier.reviews
    authorize @supplier
  end

  def new
    @supplier = Supplier.new
    authorize @supplier
  end
end
