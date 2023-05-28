class SharesController < ApplicationController
    def index
        @shares = Share.order("created_at DESC")
    end

    # usersテーブルにActiveStorageを使うための
    # def message_params
    #     params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
    # end
end
