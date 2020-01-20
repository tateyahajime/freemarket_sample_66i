class Item < ApplicationRecord

  belongs_to :user
  belongs_to :x_category, optional: true
  belongs_to :y_category, optional: true
  belongs_to :z_category, optional: true
  # belongs_to :brand
  
  has_many :images
  has_many :shippings
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :shippings, allow_destroy: true
end
