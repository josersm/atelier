class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @suppliers = policy_scope(Supplier)
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
