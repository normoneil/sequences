class GuessesController < ApplicationController
  def index
    # g = Guess.new
    # g.first_number = params["first_num"]
    # g.save
    #
    # @guesses = params["first_number", "second_number"]
    render("guesses/index.html.erb")
  end

  def answer
    # params = {"rule"=>"Increasing numbers"}
    @user_answer = params["rule"]
    render("guesses/answer.html.erb")
  end
end
