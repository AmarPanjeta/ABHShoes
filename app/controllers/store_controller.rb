class StoreController < ApplicationController
  def index
    if !params[:page].present?
    page=1;
    else
      page=params[:page].to_i
    end
    offset=8*(page-1);
    @sizes=ProductVariant.pluck(:size).uniq.sort
    condition={}
    condition[:category]=params[:category] if params[:category].present?
    condition[:brand]=params[:brand] if params[:brand].present?
    if params[:pricerange].present?
      range=params[:pricerange].split('-').map{|d| Integer(d)}
      condition[:price]=(range[0]..range[1])
    end

    productvarianthash={}
    productvarianthash[:color]=params[:color] if params[:color].present?
    productvarianthash[:size]=params[:size] if params[:size].present?
    condition[:product_variants]=productvarianthash if !productvarianthash.empty?

    if !productvarianthash.empty?
      @shoes=Shoe.joins(:product_variants).where(condition).uniq.limit(8).offset(offset)
    else
      @shoes=Shoe.where(condition).limit(8).offset(offset)
    end

    if @shoes.empty?
      flash.now[:empty]="Nažalost, nema proizvoda koji odgovaraju Vašim zahtjevima."
    end

    if !productvarianthash.empty?
      @number_of_pages=(Shoe.joins(:product_variants).where(condition).uniq.count/8.0).ceil
    else
      @number_of_pages=(Shoe.where(condition).count/8.0).ceil
    end

    if page>=@number_of_pages
      @next_page=nil
    else
      @next_page=page+1
    end

    if page<=1
    @previous_page=nil
  else
    @previous_page=page-1
  end
  end

  def dummy

  end
end
