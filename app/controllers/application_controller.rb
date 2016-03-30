class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  protected
  def authorize
    unless current_user=User.find_by_id(session[:user_id])
      flash[:error]="Niste logovani!"
      redirect_to store_index_path
    end
  end

  def admin_rights
    if !is_admin?
      redirect_to store_index_path
    end
  end
end
