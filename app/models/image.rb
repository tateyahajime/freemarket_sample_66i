class Image < ApplicationRecord

  mount_uploader :image1, ImageUploader
  belongs_to :item
end
