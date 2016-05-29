class Cart < ActiveRecord::Base
  has_many :products
  has_many :line_items, dependent: :destroy
end # class Cart
