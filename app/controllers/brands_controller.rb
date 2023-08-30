class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = policy_scope(Brand)
  end

  def set_brand
    @brand = Brand.find(params[:id])
    authorize @brand
  end
end
