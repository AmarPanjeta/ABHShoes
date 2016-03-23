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
    @number_of_pages=(Shoe.where(condition).count/8.0).ceil

    if page==@number_of_pages
      @next_page=nil
    else
      @next_page=page+1
    end

    if page==1
    @previous_page=nil
  else
    @previous_page=page-1
  end
  end

  def dummy

  end
end
