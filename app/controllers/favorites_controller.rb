class FavoritesController < ApplicationController
  before_action :authorize_brand!

  class FavoritesController < ApplicationController
    def index
      @favorites = current_user.favorites

    def create
      @supplier = Supplier.find(params[:supplier_id]) 
      @favorite = Favorite.new(brand: current_user.brand, supplier: @supplier)

      if @favorite.save
        redirect_to supplier_path(@supplier), notice: 'Supplier has been added to favorites'
      else
        render "suppliers/show"
      end
    end

    def destroy
      @favorite = Favorite.find(params[:id])
      @favorite.destroy
      redirect_to favorites_path, notice: 'Supplier has been removed from favorites'
    end

  end


  private

  def authorize_brand!
    @brand = Brand.find(params[:brand_id])
    unless current_user && @brand.user == current_user
      redirect_to root_path, alert: "Not authorized!"
    end
  end
end
