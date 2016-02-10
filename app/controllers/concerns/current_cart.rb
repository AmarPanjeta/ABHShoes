module CurrentCart
  extend ActiveSupport::Concern

  private
  def set_cart
    if session[:cart_id]
      @cart=Cart.find(session[:cart_id])
    else
      if session[:user_id].nil?
      else
      @current_user=User.find(session[:user_id])
      @cart=Cart.create
      @current_user.cart=@cart
      session[:cart_id]=@cart.id
      end
    end
  end
end
