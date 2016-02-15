class LineItemsController < ApplicationController
  include CurrentCart
  before_action :authorize
  before_action :set_cart, only: [:create]

  def create
    shoe= Shoe.find(params[:shoe_id])
    @cart.shoes<<shoe
    @cart.save
    render json: shoe
  end

  def destroy
    @line_item=LineItem.find(params[:id])
    @line_item.destroy
    redirect_to carts_path
  rescue ActiveRecord::RecordNotFound
    redirect_to carts_path
  end
end
