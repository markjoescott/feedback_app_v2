class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.new
    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]

    if @questionnaire.save
      redirect_to "/answers/new", :notice => "Please answer the following questions"
    else
      render 'new'
    end
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]

    if @questionnaire.save
      redirect_to "/questionnaires", :notice => "Questionnaire updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.destroy

    redirect_to "/questionnaires", :notice => "Questionnaire deleted."
  end
end
