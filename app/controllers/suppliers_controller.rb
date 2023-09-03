class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index

    @countries = Supplier.distinct.pluck(:country)
    @min_value = Supplier.minimum(:minimum_quantity)
    @max_value = Supplier.maximum(:minimum_quantity)

    @suppliers = policy_scope(Supplier)

    if params[:country].present?
      @suppliers = @suppliers.where("country ILIKE ?", "%#{params[:country]}%")
    end

    if params[:price_rating].present?
      @suppliers = @suppliers.where(price_rating: params[:price_rating])
    end

    if params[:sustainability_rating].present?
      @suppliers = @suppliers.where(sustainability_rating: params[:sustainability_rating])
    end

    if params[:minimum_quantity].present? && params[:max_quantity].present?
      @suppliers = @suppliers.where("minimum_quantity BETWEEN ? AND ?", params[:minimum_quantity], params[:max_quantity])
    end
  end



  def show
    @favorite = Favorite.new
    @supplier = Supplier.find(params[:id])

    @review = Review.new
    @reviews = @supplier.reviews
    @markers = [{
      lat: @supplier.latitude,
      lng: @supplier.longitude
    }]
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
      # redirect_to dashboard_path(@supplier)
      redirect_to dashboard_path
    else # should ask Isa about else condition
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @supplier = Supplier.find(params[:id])
    authorize @supplier
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.update(supplier_params)
    authorize @supplier
    redirect_to supplier_path(@supplier)
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    authorize @supplier
    redirect_to suppliers_path
  end

  def num_suppliers_worked_with
    supplier_ids = current_user.projects.pluck(:supplier_id)
    @num_suppliers_worked_with = Supplier.where(id: supplier_ids).distinct.count
    authorize @num_suppliers_worked_with, :num_suppliers_worked_with?
  end



  private

  def supplier_params
    params.require(:supplier).permit(:name, :address, :description, :country, :email, :phone_number, :price_rating, :sustainability_rating, :minimum_quantity, :photo)
  end
end
