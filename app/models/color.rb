class Color < ActiveRecord::Base
  has_many :product_variants
  has_many :shoes, through: :product_variants
  has_many :line_items
end
