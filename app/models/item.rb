class Item < ApplicationRecord

  belongs_to :user
  belongs_to :brand
  belongs_to :x_category
  belongs_to :y_category
  belongs_to :z_category
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
end
