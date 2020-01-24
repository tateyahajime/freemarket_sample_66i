
# README


# freemarket_sample_66i DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|first_name|string|
|last_name|string|
|kana_first_name|string|
|kana_last_name|string|
|zip_code|integer|
|prefectures|string|
|city|string|
|street|
|phone|integer|
|birth_year|date|
|birth_manth|date|
|birth_day|date|

### Association
- has_many :pays
- has_many :messages
- has_many :shipping
- has_many :buyer
- has_many :saler

## buyerテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :items_id

## salerテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :items_id

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text||
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :users

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item_name|string||
|price|integer||
|brand|string||
|size|integer||
|condition|integer||
|user_id|references|foreign_key: true|
|category_id|references|foreign_key: true|
|charges|integer||
|date|integer||
### Association
- belongs_to :brands
- has_many : images
- belongs_to :category
- belongs_to :user
- has_many :shippings

## paysテーブル
|Column|Type|Options|
|------|----|-------|
|card_number|integer|null: false|
|user_id|refernce|null: false, foreign_key: true|
|expiration_date_month|date|
|expiration_date_year|date|
|security_code|integer|
### Association
- belongs_to :users

## shippingsテーブル
|Column|Type|Options|
|------|----|-------|
|shipping_attributes|integer|
|area|string|
|first_name|string|
|last_name|string|
|kana_first_name|string|
|kana_last_name|string|
|zip_code|integer|
|prefectures|string|
|city|string|
|street|string|
|building_name|string|
|phone|integer|
### Association
- belongs_to :users

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|item_id|integer|foreign_key: true|
### Association
- belongs_to :users

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_name|string||
|items_id|references|foreign_key: true|
### Association
- has_many :items

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category_name|string||
### Association
- has_many :items

## sns_credentialsテーブル
|Column|Type|Options|
|------|----|-------|
|provider|string||
|uid|string||
|user_id|references||
### Association
- belongs_to :user




