class SecretsController < ApplicationController

  def show 
    if current_user
      redirect_to '/show'
    else 
      redirect_to '/login'
    end
  end
end
