class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      @user = user
      session[:user_id] = @user.id
      redirect_to '/login'
    else
    end
    
  end

  def destroy
  end
end
