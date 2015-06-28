class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_before, only: [ :create, :update, :destroy, :show ]

  def edit
  end



  def update
    if @user.save
      redirect_to '@user'
    else
      render 'edit'
    end
  end





  def set_before
    @user = User.find(params[:id])
  end

end
