class ShoesController < ApplicationController
  include ShoesHelper

  def index
    @shoes=Shoe.all
  end

  def admin_index
    @shoes=Shoe.all
  end

  def new
    @shoe=Shoe.new
  end

  def create
    @shoe=Shoe.new(shoe_params)
    @shoe.save
    
    render json: @shoe
  end

  def show
    @shoe=Shoe.find(params[:id])
    @list=similar
  end

  def destroy
    @shoe = Shoe.find(params[:id])
    @shoe.destroy
    head :no_content
  end

  private
  def shoe_params
    params.require(:shoe).permit(:name,:description,:imgurl,:price,:category_id,:brand_id)
  end
end
