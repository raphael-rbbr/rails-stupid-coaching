class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = params[:question]
    @answer = " "
    if @search.downcase == "i am going to work right now!"
      @answer = "Great!"
    elsif @search.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
