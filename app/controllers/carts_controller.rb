class CartsController < ApplicationController
  include CurrentCart
  before_action :authorize, only: [:index,:next]
  before_action :set_cart, only: [:index,:next]
  def index
    @price=0;
    @quantity=current_user.cart.shoes.count
    @cart=current_user.cart
  end

  def next
    @quantity=current_user.cart.shoes.count
    @cart=current_user.cart
    @price=0
    @cart.line_items.each do |li|
    @price=@price+li.shoe.price
    end
  end

  def pay
    error=[]
    error<<"Niste unijeli ime" if !params[:info][:name].present?
    error<<"Niste unijeli prezime" if !params[:info][:surname].present?
    error<<"Niste unijeli adresu" if !params[:info][:address].present?
    error<<"Niste unijeli grad" if !params[:info][:city].present?
    error<<"Niste unijeli drzavu" if !params[:info][:country].present?
    if !error.empty?
      flash[:error]=error
      redirect_to carts_next_path
    else
      @name=params[:info][:name]
      @surname=params[:info][:surname]
      @address=params[:info][:address]
      @city=params[:info][:city]
      @country=params[:info][:country]

      @quantity=current_user.cart.shoes.count
      @cart=current_user.cart
      @price=0
      @cart.line_items.each do |li|
      @price=@price+li.shoe.price
      end
    end
  end

  def abort

  end

  def method_name

  end
end
