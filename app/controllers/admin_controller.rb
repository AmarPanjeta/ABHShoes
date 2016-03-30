class AdminController < ApplicationController
  before_action :authorize
  before_action :admin_rights
  def panel

  end
end
