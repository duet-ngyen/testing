class Teacher::ExaminationsController < ApplicationController
    def show
      @examination = Examination.find(params[:id])
    end

    def index
      @examinations = Examination.all
    end

    def new
        @questions = Question.all
        @examination = Examination.new
    end
    
    def create
        @examination = Examination.new examination_params
        if @examination.save
          flash[:notice] = 'examination has been created'
          redirect_to teacher_examinations_path
        else
          render 'new'
        end
    end

    private
    def examination_params
        params.require(:examination).permit :name, :question_ids => []
    end
end
