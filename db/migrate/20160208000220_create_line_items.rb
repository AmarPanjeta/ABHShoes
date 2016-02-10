class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :cart, index: true
      t.references :shoe, index: true

      t.timestamps
    end
  end
end
