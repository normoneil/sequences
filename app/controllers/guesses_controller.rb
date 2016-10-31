class GuessesController < ApplicationController
  def index
    # 1.is_a? Integer
    @first_number = params["first_number"]
    @second_number = params["second_number"]
    @third_number = params["third_number"]
    g = Guess.new
    g.first_number = @first_number
    g.second_number = @second_number
    g.third_number = @third_number
    if g.first_number != nil && g.second_number != nil && g.third_number != nil
      if @first_number < @second_number && @second_number < @third_number
        @outcome = "Yes!"
      else
        @outcome = "No."
      end
      g.result = @outcome
      g.save
    end
    @list = Guess.all
    render("guesses/index.html.erb")
  end

  def answer
    # params = {"rule"=>"Increasing numbers"}
    @user_answer = params["rule"]
    render("guesses/answer.html.erb")
  end

  def clear
    Guess.delete_all
    render("guesses/index.html.erb")
  end
end
