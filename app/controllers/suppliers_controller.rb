class SuppliersController < ApplicationController

  def index
    @suppliers = policy_scope(Supplier)
  end

  def show
    @supplier = Supplier.find(params[:id])
    authorize @supplier
  end

  def new
    @supplier = Supplier.new
    authorize @supplier
  end
end
