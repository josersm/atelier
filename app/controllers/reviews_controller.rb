class ReviewsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]

  # def new
  #   @review = Review.new
  #   @review.product_id = params[:product_id]
  # end

  # def create
  #   @review = Review.new(review_params)
  #   @review.user_id = current_user.id
  #   @review.product_id = params[:product_id]
  #   if @review.save
  #     redirect_to product_path(@review.product_id)
  #   else
  #     render 'new'
  #   end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:rating, :comment)
  # end
end
