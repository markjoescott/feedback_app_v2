class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    # @answer = Answer.find(params[:id])
    #  @answer = Answer.new
    # @answer.answer_1 = params[:answer_1]
    # @answer.answer_2 = params[:answer_2]
    # @answer.answer_3 = params[:answer_3]
    # @answer.answer_4 = params[:answer_4]
    # @answer.answer_5 = params[:answer_5]

  end

  def new
    @answer = Answer.new

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]

    @answer.questionnaire_id = params[:questionnaire_id]
    @answer.respondent_id = params[:respondent_id]
    @answer.comment = params[:comment]

    @score = (@answer.answer_1.to_f+@answer.answer_2.to_f+@answer.answer_3.to_f+@answer.answer_4.to_f+@answer.answer_5.to_f)/5

  end

  def create
    @answer = Answer.new
    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]

    @answer.questionnaire_id = params[:questionnaire_id]
    @answer.respondent_id = params[:respondent_id]
    @answer.comment = params[:comment]

    @score = (@answer.answer_1.to_f+@answer.answer_2.to_f+@answer.answer_3.to_f+@answer.answer_4.to_f+@answer.answer_5.to_f)/5


  end


    # if @answer.save


    #   redirect_to "/answers/score", :notice => "Thanks for your feedback"
    # else
    #   render 'new'
    # end


  def score
  @score = (@answer_1.to_f+@answer_2.to_f+@answer_3.to_f+@answer_4.to_f+@answer_5.to_f)/5
  end
  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]
    @answer.questionnaire_id = params[:questionnaire_id]
    @answer.respondent_id = params[:respondent_id]
    @answer.comment = params[:comment]


    if @answer.save
      redirect_to "/answers/score", :notice => "Answer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])

    @answer.destroy

    redirect_to "/answers", :notice => "Answer deleted."
  end
end
