class StoreController < ApplicationController
  def index
    # raise
    condition={}
    condition[:category]=params[:category] if params[:category].present?
    condition[:brand]=params[:brand] if params[:brand].present?
    @shoes=Shoe.where(condition)
  end

  def dummy

  end
end
