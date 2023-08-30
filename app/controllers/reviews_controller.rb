class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @review = Review.new(review_params)
    @review.brand = current_user.brand
    @review.supplier = @supplier
    authorize @review
    if @review.save
      redirect_to supplier_path(@supplier), notice: 'Review was successfully created.'
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
