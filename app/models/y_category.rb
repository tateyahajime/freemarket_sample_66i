class YCategory < ApplicationRecord

  has_many :items
  belongs_to :x_category
  has_many :z_category
  accepts_nested_attributes_for :z_category, allow_destroy: true
  accepts_nested_attributes_for :items, allow_destroy: true
end
