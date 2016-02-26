class CartsController < ApplicationController
  include CurrentCart
  before_action :authorize, only: [:index]
  before_action :set_cart, only: [:index]
  def index
    @price=0;
    @quantity=current_user.cart.shoes.count
    @cart=current_user.cart
  end
end
