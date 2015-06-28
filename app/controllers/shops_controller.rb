class ShopsController < ApplicationController
before_action :set_before, only: [ :show, :edit, :update, :destroy ]

  def index
    @shop = Shop.new
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  def show
    #@user = User.find(params[:user_id])
    #@review = Review.find(params[:review_id])
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def set_before
    @shop = Shop.find(params[:id])
  end




private

  def shop_params
    params.require(:shop).permit(
      :name,
      :phone_number,
      :address,
      :shop_url
      )
  end


end
