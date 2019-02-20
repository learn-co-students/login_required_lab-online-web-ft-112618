class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    if !session[:name] || session[:name].empty?
    redirect_to '/login'
    else
    redirect_to '/'
    end
  end
  
  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end

  def new 
  end
end
