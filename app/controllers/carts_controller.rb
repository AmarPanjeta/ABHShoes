class CartsController < ApplicationController
  before_action :authorize, only: [:index]
  def index
    @cart=current_user.cart
  end
end
