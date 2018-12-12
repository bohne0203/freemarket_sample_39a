class Item < ApplicationRecord
  # アソシエーションの定義
  belongs_to :lcategory
  belongs_to :mcategory
  belongs_to :scategory

  has_one :shipping_method
  accepts_nested_attributes_for :shipping_method
  # has_many :likes
  has_many :images
  accepts_nested_attributes_for :images
end
