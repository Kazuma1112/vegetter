class VegetablesController < ApplicationController

  def index

  end

  def new
  @vegetables = Vegetable.new
  end

  def create
     Vegetable.create(vegetables_params)

  end

  private
 def vegetables_params
  params.require(:vegetable).permit(:name, :price, :image1, :image2, :image3,  :text, :user_id)
 end
end
