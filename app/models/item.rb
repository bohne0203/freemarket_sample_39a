class Item < ApplicationRecord
  # アソシエーションの定義
  belongs_to :user
  belongs_to :lcaregory
  belongs_to :mcategory
  belongs_to :scategory
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  has_many :brands
  has_one :shipping_method
  has_one :size
  has_many :likes
end
