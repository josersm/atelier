class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @review = Review.new
    @review.brand_id = params[:brand_id]
    @review.product_id = params[:product_id]
    authorize @review

  end

  def create
    authorize @review
  #   @review = Review.new(review_params)
  #   @review.user_id = current_user.id
  #   @review.product_id = params[:product_id]
  #   if @review.save
  #     redirect_to product_path(@review.product_id)
  #   else
  #     render 'new'
  #   end
  end

  # private

  # def review_params
  #   params.require(:review).permit(:rating, :comment)
  # end
end
