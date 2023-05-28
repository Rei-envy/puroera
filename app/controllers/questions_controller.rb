class QuestionsController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    def index
        @questions = Question.order('created_at DESC')
    end

    def new
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        if @question.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def question_params
        params.require(:question).permit(:title, :category_id, :hypothesis, :action, :thought).merge(user_id: current_user.id)
    end
end