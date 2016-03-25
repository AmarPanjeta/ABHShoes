class Shoe < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_many :product_variants
  has_many :colors, through: :product_variants
end
