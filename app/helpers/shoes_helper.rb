module ShoesHelper
  def similar
    Shoe.order("RANDOM()").limit(4)
  end
end
