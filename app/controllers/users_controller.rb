class UsersController < ApplicationController

  def show

# @vegetables = Vegetable.all
@vegetables = User.find(params[:id]).vegetables

   vegetables_ids = Vegetable.group(:user_id).count(:user_id)

 end
end
