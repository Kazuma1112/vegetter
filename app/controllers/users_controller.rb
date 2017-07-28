class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @vegetables = user.vegetables.order('id ASC').limit(5)
    @favorites = user.favorites
  end
end

