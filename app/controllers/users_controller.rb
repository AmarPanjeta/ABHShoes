class UsersController < ApplicationController
  include UsersHelper
  def index
    @users=User.all

    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)

    if @user.save
    flash[:success]="Uspjesna registracija"
    redirect_to @user #zasto ovo radi?
    else
      userErrors(@user)
      redirect_to new_user_path
    end


  end

  def show
    respond_to do |format|
        format.html {@user=User.find(params[:id])}
        format.json { @user=User.find(params[:id]);render json: @user }
    end
  #  @user=User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username,:name,:surname,:email,:password,:password_confirmation)
  end
end
