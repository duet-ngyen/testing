class AnswerSheetsController < ApplicationController
  def new
    @examination = Examination.find(params[:examination_id])
    @questions = @examination.questions
    @answer_sheet = AnswerSheet.new(examination_id: params[:examination_id])
  end
  
  def create
    @answer_sheet = AnswerSheet.new(answer_sheet_params)
    if @answer_sheet.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def answer_sheet_params
    params.require(:answer_sheet).permit :examination_id, :student_id, answers_attributes: [:id, :option_id]
  end
end
