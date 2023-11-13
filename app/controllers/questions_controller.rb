class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = ''
    if params[:question] == 'I am going to work'
      @response = 'Great!'
    elsif params[:question].include? '?'
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
