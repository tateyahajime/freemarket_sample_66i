class XCategory < ApplicationRecord

  has_many :items
  has_many :y_categorys
  accepts_nested_attributes_for :items, allow_destroy: true
  accepts_nested_attributes_for :y_categorys, allow_destroy: true
end
