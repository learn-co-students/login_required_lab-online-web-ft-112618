class SessionsController < ApplicationController
  # before_action :require_login


  def create
    session[:name] = params[:name]

    if session[:name] == nil || session[:name] == ''
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  # def require_login
  #   return head(:forbidden) unless session.include? :name
  # end


end
