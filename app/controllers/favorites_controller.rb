class FavoritesController < ApplicationController
  # before_action :authorize_brand!
  def index
    # @favorites = @brand.favorites;
    @favorites = Favorite.where(brand_id: params[:brand_id])
  end



  def show
  end

  private
  # def authorize_brand!
  #   @brand = Brand.find(params[:brand_id])
  #   unless current_user && @brand.user == current_user
  #     redirect_to root_path, alert: "Not authorized!"
  #   end
  # end
end
