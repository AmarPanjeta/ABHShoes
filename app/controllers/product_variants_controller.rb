class ProductVariantsController < ApplicationController

  def sizes
    condition={color:params[:color],shoe:params[:shoe]}
    sizes=ProductVariant.where(condition).pluck(:size)
    render json: sizes
  end
end
