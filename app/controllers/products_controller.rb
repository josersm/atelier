class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
  @products = policy_scope(Product)
    @products = Product.all
    @product = Product.new # Add this line to instantiate the form on the index
  end


  def create
    @product = Product.new(product_params)
    @project = Project.find(params[:project_id])
    @product.project = @project
    authorize @product
    if @product.save
      redirect_to project_path(@project), notice: "Product added!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def total_products_manufactured
    @total_products_manufactured = current_user.product.count
    authorize @total_products_manufactured, :total_products_manufactured?
  end


  private

  def product_params
    params.require(:product).permit(
			:description,
			:quantity_xs,
			:quantity_s,
			:quantity_m,
			:quantity_l,
			:quantity_xl,
			:price,
			:name
		)
  end


  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end
