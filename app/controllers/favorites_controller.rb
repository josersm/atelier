class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_brand

  def index
    @favorites = policy_scope(@brand.favorites)
  end

  private

  def set_brand
    @brand = current_user.brand
    redirect_to root_path, alert: "No associated brand found!" unless @brand
  end
end
