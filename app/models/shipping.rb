class Shipping < ApplicationRecord
  has_many :users
  belongs_to :item
  belongs_to_active_hash :prefectures
end
