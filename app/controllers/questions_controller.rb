class QuestionsController < ApplicationController
  def ask
    # @questions = ['I am going to work']
    # anything that ends with a question mark
    # anything else
  end

  def answer
    # @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    # if params == @questions[0]
    #   @answers = @answers[0]
    # # elsif params =
    # else
    #   @answers = @answers[2]
    # end
    @question = params[:question]
    @answers = "I don't care, get dressed and go to work!"
    @answers = "Great!" if params[:question] == "I am going to work"
    @answers = "Silly question, get dressed and go to work!" if params[:question].include? "?"
  end
end

# %w
