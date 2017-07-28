class FavoritesController < ApplicationController
 def create
 	vegetable = Vegetable.find(params[:id])
 	images = vegetable.vegetable_images
 	main_image = images.where(status: 0).first
 	

 	# favorite = Favorite.new(create_params)

 	# favorite.save
  	Favorite.create(
 		user_id: current_user.id,
 		vegetable_id: params[:id],
 		vegetable_image: main_image.id
	)

 end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to user_path(current_user)
    end
 end

 private
 def create_params
 	# params.permit(:id)
 	# params.require(:favorite).merge(
 	# 	user_id: current_user.id,
 	# 	vegetable_id: params[:id],
 	# 	vegetable_image: 
 	# )
 end
end
