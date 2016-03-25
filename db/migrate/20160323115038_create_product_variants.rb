class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.references :color
      t.integer :size

      t.timestamps
    end
  end
end
