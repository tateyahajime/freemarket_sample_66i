class ZCategory < ApplicationRecord

  has_many :items
  belongs_to :y_category
  accepts_nested_attributes_for :items, allow_destroy: true
end
