class SuppliersController < ApplicationController

  def new
    @supplier = Supplier.new
  end
    
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

end
