class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name] || nil
    if session[:name] == nil || session[:name] == ""
      redirect_to "/login"
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name if session[:name] != nil
  end
end
