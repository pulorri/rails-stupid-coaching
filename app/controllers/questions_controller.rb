class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

    def coach_answer(question)
      if question.downcase == 'I am going to work right now!'
        'You are great!'
      elsif question.end_with?('?')
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
    end
end
#what will happen to the user input based on the params
#Set the conditions. What will happen if I use a ?, or what will the coach reply...
#in this exercise we use params to print out what the question is.
#the page will be the view, the controller is the inner-workings of how everything will behave.
#the / routes you to the next page i.e. url/ask.
