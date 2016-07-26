class Teacher::QuestionsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @questions = Question.all
  end
 
  def new
    @question = Question.new
    1.times {@question.options.build}
  end

  def create
    @question = Question.new question_params
    if @question.save
      flash[:notice] = 'Question has been created'
      redirect_to teacher_questions_path
    else
      render 'new'
    end
  end
  
  private
  def question_params
    params.require(:question).permit :content, options_attributes: [:id, :content, :is_correct, :_destroy]
  end
end
