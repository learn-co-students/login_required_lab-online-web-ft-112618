class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ''

      redirect_to login_path
    else

      redirect_to root_path
    end
  end

  def destroy
    session.delete :name

    redirect_to login_path
  end

end
