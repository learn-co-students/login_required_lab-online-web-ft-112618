class SessionsController < ApplicationController

  def create
    if !params[:name] || params[:name].empty?
    redirect_to '/login'
    else
     session[:name] = params[:name]
    render :welcome
    end
  end
  
  def destroy
    session.delete :name
    render :welcome
  end

  def new 
  end
end
