class Category < ActiveRecord::Base
  has_many :shoes,dependent: :destroy
end
