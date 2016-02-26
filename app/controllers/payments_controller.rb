class PaymentsController<ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @amount=current_user.cart.shoes.sum(:price)*100+3000
    Stripe::Charge.create(
      :amount => @amount.floor,
      :currency => "usd",
      :source => params[:stripeToken] # obtained with Stripe.js
    )
    flash[:success]=1;
    current_user.cart.line_items.clear
    redirect_to carts_path
  end
end
