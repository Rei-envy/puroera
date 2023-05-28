class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to share_path(@comment.share_id)
        else
            @prototype = @comment.share
            @comments = @share.comments
            render "share/show"
        end
    end
    

    private
    def comment_params
        params.require(:comment).permit(:content).merge(user_id: current_user.id, share_id: params[:share_id])
    end
end
