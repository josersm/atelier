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

  def create
    @supplier = Supplier.new(supplier_params)
    @supplier.user = current_user # save the foreign key
		authorize @supplier
    if @supplier.save
      redirect_to dashboard_path(@supplier)
    else # should ask Isa about else condition
      render :new, status: :unprocessable_entity
    end
  end

	def supplier_params
    params.require(:supplier).permit(
			:name,
			:address,
			:description,
			:country,
			:email,
			:phone_number,
			:price_rating,
			:sustainability_rating,
			:minimum_quantity
		)
  end

end
