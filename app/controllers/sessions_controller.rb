class SessionsController < ApplicationController
  def new

  end

  def create
    user=User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password])
    sign_in user
    session[:user_id] = user.id
    session[:username]=user.username
    flash[:success]="Uspjesan login!"
    redirect_to user
    else
      flash[:error]='Pogresna username/password kombinacija'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    session[:username]=nil
    sign_out
    redirect_to root_path
  end
end
