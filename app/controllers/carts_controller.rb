class CartsController < ApplicationController
  before_action :authorize, only: [:index]
  def index
    @price=0;
    @quantity=current_user.cart.shoes.count
    @cart=current_user.cart
  end
end
