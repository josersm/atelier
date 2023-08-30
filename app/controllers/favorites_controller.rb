class FavoritesController < ApplicationController

    def index
      @favorites = current_user.favorites
    end

    def create
      @supplier = Supplier.find(params[:supplier_id])
      @favorite = Favorite.new(brand: current_user.brand, supplier: @supplier)
      authorize @favorite
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


  def compare
    if params[:supplier_ids].nil? || params[:supplier_ids].length != 2
      redirect_to favorites_path, alert: "Please select two suppliers to compare"
      return
    end
    @favorites_compare = Favorite.joins(:brand).where(supplier_id: params[:supplier_ids], brands: { user_id: current_user.id })

    if @favorites_compare.any?
      authorize @favorites_compare.first, :compare?
    else
      redirect_to favorites_path, alert: "Selected favorites not found or not associated with current user."
      return
    end
  end

  private

  def set_brand
    @brand = current_user.brand
    redirect_to root_path, alert: "No associated brand found!" unless @brand
  end
end
