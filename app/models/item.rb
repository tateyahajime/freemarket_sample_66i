class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true
 
  # accepts_nested_attributes_for :category, allow_destroy: true
  
  has_many :images
  has_many :shippings
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :shippings, allow_destroy: true
  accepts_nested_attributes_for :category, allow_destroy: true
  
  enum charges: {"送料込み(出品者負担)": 1,"着払い(購入者負担)": 2}
  enum date: {"1~2日で発送": 1,"2~3日で発送": 2,"4~7日で発送": 3}
  enum condition: {"新品、未使用": 1,"未使用に近い": 2,"目立った傷や汚れなし": 3, "やや傷や汚れあり": 4,"傷や汚れあり": 5, "全体的に状態が悪い": 6}
  enum size: {"XXS以下": 1,"XS(SS)": 2,"S": 3,"M": 4,"L": 5,"XL(LL)": 6,"2XL(3L)": 7,"3XL(4L)": 8,"4XL(5L)以上": 9, "FREE SIZE": 10}

  # enum x_category: {"レディース": 1,"メンズ": 2,"ベビー・キッズ": 3,"インテリア・住まい・小物": 4,"本・音楽・ゲーム": 5,"おもちゃ・ホビー・グッズ": 6,"コスメ・香水・美容": 7,"家電・スマホ・カメラ": 8,"スポーツ・レジャー": 9,"ハンドメイド": 10, "チケット": 11, "自動車・オートバイ": 12, "その他": 13}
  # enum y_category: {"トップス": 1,"ジャケット/アウター": 2, "パンツ": 3}
  # enum z_category: {"Tシャツ/カットソー(半袖/袖なし)": 1, "Tシャツ/カットソー(7分/長袖)": 2, "シャツ/ブラウス(半袖/袖なし)": 3}
end
