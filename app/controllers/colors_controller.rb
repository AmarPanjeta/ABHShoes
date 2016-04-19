class ColorsController < ApplicationController

  def shoe_colors
    shoe=Shoe.find(params[:id])
    colors=shoe.colors.uniq
    render json:colors
  end

  def color
    color=Color.find(params[:id])
    render json: color
  end
end
