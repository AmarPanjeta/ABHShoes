class ProductVariantsController < ApplicationController

  def sizes
    condition={color:params[:color],shoe:params[:shoe]}
    sizes=ProductVariant.where(condition).pluck(:size)
    render json: sizes
  end

  def create
    @pv=ProductVariant.new(color_id: params[:color],size: params[:size], shoe_id: params[:shoe])
    @pv.save
    color=Color.find(params[:color])
    render json: {id:@pv.id, color: color}
  end

  def destroy
    @pv = ProductVariant.find(params[:id])
    @pv.destroy
    head :no_content
  end

  def variants_edit
    @pvs=Shoe.find(params[:shoe]).product_variants
    @shoe=params[:shoe]
  end
end
