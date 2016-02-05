class StoreController < ApplicationController
  def index
    @shoes=Shoe.all
  end

  def dummy

  end
end
