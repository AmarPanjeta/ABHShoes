class AddCategoryIdToShoes < ActiveRecord::Migration
  def change
    add_reference :shoes, :category, index: true
  end
end
