class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:user][:password] != params[:user][:password_confirmation]
      redirect_to '/signup'  
    else
      @user=User.new(user_params)
      if @user.save
        session["user_id"] = @user.id
      else
        redirect_to '/signup'
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end
