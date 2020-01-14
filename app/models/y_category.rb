class YCategory < ApplicationRecord

  has_many :items
  belongs_to :x_category
  
end
