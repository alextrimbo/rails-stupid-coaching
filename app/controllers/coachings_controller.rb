class CoachingsController < ApplicationController
  def answer
    @user_question = params[:query]
    @answer = coach_answer(@user_question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include?"?"
      return "Silly question, get dressed and go to work!"
    elsif !your_message.include?"?"
      return "I don't care, get dressed and go to work!"
    end
  end
end
