class UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC')
  end

  def show
    @nickname = current_user.nickname
    @user = User.find(params[:id])
  end
end
