class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :update, :edit, :destroy]
  def index
    @questions = Question.order('created_at DESC')
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
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path(@question.id)
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy if current_user.id == question.user_id
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :category_id, :hypothesis, :action, :thought).merge(user_id: current_user.id)
  end
end
