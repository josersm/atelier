class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = policy_scope(Brand)
  end

  def new
    @brand = Brand.new
    authorize @brand
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.user = current_user # save the foreign key
		authorize @brand
    if @brand.save
      # redirect_to dashboard_path(@brand)
      redirect_to dashboard_path
    else # should ask Isa about else condition
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @brand.update(brand_params)
    authorize @brand
    redirect_to brand_path(@brand)
  end

  def destroy
    @brand.destroy
    authorize @brand
    redirect_to brands_path
  end

  def set_brand
    @brand = Brand.find(params[:id])
    authorize @brand
  end

	def brand_params
    params.require(:brand).permit(
			:company_name,
			:bic_number,
			:email,
			:contact_number,
			:country,
			:address
		)
  end

  def brands_worked_with
    @num_brands_worked_with = current_user.brands.distinct.count
    authorize @num_brands_worked_with, :brands_worked_with?
  end
end
