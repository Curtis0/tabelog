class ShopsController < ApplicationController

  def index
    @shop = Shop.new
  end

  def new
    @shop = Shop.new
  end



end
