class QuestionsController < ApplicationController
  def new
    @question=Question.new
  end

  def create
    @question=Question.new(question_params)
    
    if @question.save
      flash[:success]='登録しました'
      redirect_to root_path
    else
      flash.now[:danger]='登録に失敗しました'
      render :new
    end
  end
  
  private
  
  def question_params
    params.require(:question).permit(:year,:number,:sentence,:answer,:text,:category_id)
  end
end
