class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action set_before: { :create, :update, :destroy, :show }

  def update
    if @user.update
      redirect_to '@user'
    else
      render 'edit'
    end
  end





  def set_before
    @user = User.find(params[:id])
  end

end
