class AddSizeAndColorToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :size, :integer
    add_reference :line_items, :color, index: true
  end
end
