class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # Use policy_scope to retrieve suppliers based on user's authorization
    @suppliers = policy_scope(Supplier)

    @markers = @suppliers.geocoded.map do |supplier|
      {
        lat: supplier.latitude,
        lng: supplier.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { supplier: supplier })
      }
    end
  end

  def show
    @favorite = Favorite.new
    @supplier = Supplier.find(params[:id])

    # Remove this if statement as it doesn't seem to have a clear purpose here
    # if @favorite.save

    @review = Review.new
    @reviews = @supplier.reviews
    authorize @supplier
  end

  def new
    @supplier = Supplier.new
    authorize @supplier
  end
end
