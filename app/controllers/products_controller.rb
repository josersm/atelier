class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = policy_scope(Product)
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

end
