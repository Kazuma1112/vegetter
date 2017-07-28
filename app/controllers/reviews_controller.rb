class ReviewsController < ApplicationController
  # before_action :authenticate_user!, only: :new
  def new
   @vegetable = Vegetable.find(params[:vegetable_id])
   @review = Review.new
  end

  def create
    Review.create(create_params)
    redirect_to controller: :vegetables, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:general_rate, :taste_rate, :visual_rate, :communication_rate, :comment).merge(vegetable_id: params[:vegetable_id], nickname: current_user.nickname)
  end
end
