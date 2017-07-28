class AllController < ApplicationController
  def index
 @vegetable = User.find(params[:user_id])
  end
end
