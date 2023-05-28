class SharesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @shares = Share.order('created_at DESC')
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
    @share = Share.find(params[:id])
    @comment = Comment.new
    @comments = @share.comments
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
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

  # usersテーブルにActiveStorageを使うための
  # def message_params
  #     params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  # end
end
