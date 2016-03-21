class StoreController < ApplicationController
  def index
    if !params[:page].present?
    page=1;
    else
      page=params[:page].to_i
    end
    offset=8*(page-1);
    condition={}
    condition[:category]=params[:category] if params[:category].present?
    condition[:brand]=params[:brand] if params[:brand].present?
    @shoes=Shoe.where(condition).limit(8).offset(offset)
    @next_page=page+1
    @previous_page=page-1
  end

  def dummy

  end
end
