class UserController < ApplicationController
  
  def login
    # 1 is just a value to give to variable:login to track it. No a counter for sessions.
    session[:login] = 1
    # flash a notice to user
    flash[:notice] = "You logged in ..... Well Done!"
    redirect_to :controller => :items
  end
  
  def logout
    # want to reverse what did in login so set login variable to nil
    session[:login] = nil
    flash[:notice] = "Ok then see you next time!"
    # redirect to items page
    redirect_to :controller => :items
  end
  
  
  
  
  
end
