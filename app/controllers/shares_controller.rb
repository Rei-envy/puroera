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
