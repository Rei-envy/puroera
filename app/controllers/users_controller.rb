class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:show]
  def index
    @users = User.order('created_at ASC')
  end

  def show
    @user = User.find(params[:id])
    @shares = @user.shares
    @questions = @user.questions
  end
end
