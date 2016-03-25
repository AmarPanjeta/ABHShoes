class ColorsController < ApplicationController

  def shoe_colors
    shoe=Shoe.find(params[:id])
    colors=shoe.colors.uniq
    render json:colors
  end
end
