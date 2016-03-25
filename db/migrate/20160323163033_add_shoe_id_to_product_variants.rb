class AddShoeIdToProductVariants < ActiveRecord::Migration
  def change
    add_reference :product_variants, :shoe, index: true
  end
end
