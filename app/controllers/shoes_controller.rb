class ShoesController < ApplicationController
  include ShoesHelper

  def index
    @shoes=Shoe.all
  end
  def new
    @shoe=Shoe.new
  end

  def create
    @shoe=Shoe.new(shoe_params)

    @shoe.save
    flash[:success]="Uspjesno ste dodali cipelu"
    redirect_to @shoe
  end

  def show
    @shoe=Shoe.find(params[:id])
    @list=similar
  end

  private
  def shoe_params
    params.require(:shoe).permit(:name,:description,:imgurl,:price)
  end
end
