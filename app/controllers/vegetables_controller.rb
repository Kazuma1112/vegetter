class VegetablesController < RankingController


  def index
    @vegetables = Vegetable.order('id ASC').limit(10)
  end



  def new
  @vegetable = Vegetable.new
  4.times{ @vegetable.vegetable_images.build }

  end

  def create

     Vegetable.create(vegetables_params)

  end

  def show
  @vegetable = Vegetable.find(params[:id])
  @comments = @vegetable.comments.includes(:user)
      # @vegetable_image = Vegetable_image.find(params[:vegetable_id])
  end



  def purchase
     Payjp.api_key = PYAJP_SECRET_KEY
     @price = Vegetable.find(params[:id])
     Payjp::Charge.create(
      :amount => @price.price,
      :card => params['payjp-token'],
      :currency => 'jpy'
      )
  end

  private
 def vegetables_params
  params.require(:vegetable).permit(:name, :price, :text, :user_id,
                                    {vegetable_images_attributes: [:image, :status]})
 end

 def search
 @vegetable =Vegetable.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
 end
end
