class UsersController < ApplicationController
  include UsersHelper
  before_action :authorize, only:[:index]
  before_action :admin_rights, only:[:index]
  def index
    @users=User.all

    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  def new
    if session[:user].present?
    @user=User.new(session[:user])
    session[:user]=nil
  else
    @user=User.new
  end
  end

  def create
    @user=User.new(user_params)

    if @user.save
    flash[:success]="Uspjesna registracija"
    redirect_to @user #zasto ovo radi?
    else
      userErrors(@user)
      session[:user]=params[:user]
      redirect_to new_user_path
    end


  end

  def show
    respond_to do |format|
        format.html {@user=User.find(params[:id])}
        format.json { @user=User.find(params[:id]);render json: @user }
    end
  end

  def destroy
    @user = User.find(params[:id])
    if !@user.admin
    @user.destroy
  end
    head :no_content
  end

  private
  def user_params
    params.require(:user).permit(:username,:name,:surname,:email,:password,:password_confirmation)
  end
end
