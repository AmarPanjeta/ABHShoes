class LineItemsController < ApplicationController
  include CurrentCart
  before_action :authorize
  before_action :set_cart, only: [:create]

  def create
    shoe= Shoe.find(params[:shoe_id])
    li=LineItem.new
    li.quantity=params[:quantity]
    li.color=Color.find(params[:color])
    li.size=params[:size]
    li.shoe=shoe
    @cart.line_items<<li
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
