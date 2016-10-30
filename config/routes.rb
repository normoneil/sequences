Rails.application.routes.draw do

  get("/", { :controller => "guesses", :action => "index" })
  get("/all_guesses", { :controller => "guesses", :action => "index" })
  get("/show_answer", { :controller => "guesses", :action => "answer" })
  get("/create_guess", { :controller => "guesses", :action => "create" })
  get("/clear_guess", { :controller => "guesses", :action => "clear" })
end
