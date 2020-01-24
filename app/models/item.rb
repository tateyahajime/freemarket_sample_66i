class Item < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to_active_hash :prefecture
  belongs_to :category, optional: true
 
  accepts_nested_attributes_for :category, allow_destroy: true
  validates_associated :images
  validates :images, presence: true
  validates :item_name, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :condition, presence: true
  validates :charges, presence: true
  # validates :prefectures, presence: true
  validates :category_id, presence: true
  validates :date, presence: true
  validates :description, presence: true

  

  has_many :images, dependent: :destroy
  has_many :shippings
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :shippings, allow_destroy: true
  accepts_nested_attributes_for :category, allow_destroy: true
  
  enum charges: {"送料込み(出品者負担)": 1,"着払い(購入者負担)": 2}
  enum date: {"1~2日で発送": 1,"2~3日で発送": 2,"4~7日で発送": 3}
  enum condition: {"新品、未使用": 1,"未使用に近い": 2,"目立った傷や汚れなし": 3, "やや傷や汚れあり": 4,"傷や汚れあり": 5, "全体的に状態が悪い": 6}
  enum size: {"XXS以下": 1,"XS(SS)": 2,"S": 3,"M": 4,"L": 5,"XL(LL)": 6,"2XL(3L)": 7,"3XL(4L)": 8,"4XL(5L)以上": 9, "FREE SIZE": 10}

 
end
