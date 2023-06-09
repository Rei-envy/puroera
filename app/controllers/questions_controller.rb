class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :update, :edit, :destroy]
  before_action :set_question, only: [:show, :edit, :update]

  def index
    @questions = Question.order('created_at DESC')
    @users = User.order('created_at ASC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def show
    @answer = Answer.new
    @answers = @question.answers
  end

  def search
    @questions = Question.search(params[:keyword])
    @users = User.order('created_at ASC')
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question.id)
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy if current_user.id == question.user_id
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :category_id, :hypothesis, :action, :thought).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
