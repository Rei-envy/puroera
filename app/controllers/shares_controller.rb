class SharesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :update, :edit, :destroy]
  before_action :set_share, only: [:show, :edit, :update]

  def index
    @shares = Share.order('created_at DESC')
    @users = User.order('created_at ASC')
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(share_params)
    if @share.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @share.comments
  end

  def search
    @shares = Share.search(params[:keyword])
    @users = User.order('created_at ASC')
  end

  def edit
  end

  def update
    if @share.update(share_params)
      redirect_to share_path(@share.id)
    else
      render :edit
    end
  end

  def destroy
    share = Share.find(params[:id])
    share.destroy if current_user.id == share.user_id
    redirect_to root_path
  end

  private

  def share_params
    params.require(:share).permit(:title, :category_id, :guess, :solution, :thought).merge(user_id: current_user.id)
  end

  def set_share
    @share = Share.find(params[:id])
  end
end
