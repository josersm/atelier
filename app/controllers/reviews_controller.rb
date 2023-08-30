class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @review = Review.new
    @review.brand_id = params[:brand_id]
    @review.supplier_id = params[:supplier_id]

  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.supplier_id = params[:supplier_id]
    authorize @review
    if @review.save
      redirect_to suppliers_path(@supplier), notice: 'Review was successfully created.'
    else
      render 'new'
    end
  end

  # private

  # def review_params
  #   params.require(:review).permit(:rating, :comment)
  # end
end
