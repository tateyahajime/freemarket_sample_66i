class ZCategory < ApplicationRecord

  has_many :items
  belongs_to :y_category
end
