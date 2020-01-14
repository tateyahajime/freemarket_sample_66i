
# README



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


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
|phone|integer|null: false|
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
|size|float||
|condition|string||
|x_category_id|references|foreign_key: true|
|y_categorys_id|references|foreign_key: true|
|z_categorys_id|references|foreign_key: true|
### Association
- has_many :buyer
- has_many :saler
- belongs_to :brands
- has_many : images
- belongs_to : x_category
- belongs_to : y_category
- belongs_to : z_category

## paysテーブル
|Column|Type|Options|
|------|----|-------|
|method|integer||
|user_id|refernce|null: false, foreign_key: true|
### Association
- belongs_to :users

## shippingsテーブル
|Column|Type|Options|
|------|----|-------|
|shipping_charges|integer||
|area|text||
|date|datetime||
### Association
- belongs_to :users

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
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

## xテーブル
|Column|Type|Options|
|------|----|-------|
|x_category_name|string||
### Association
- has_many :items
- has_many :y_categroy

## yテーブル
|Column|Type|Options|
|------|----|-------|
|y_category_name|string||
### Association
- has_many :items
- has_many :z_category
- belongs_to :x_category

## zテーブル
|Column|Type|Options|
|------|----|-------|
|z_category_name|string||
### Association
- has_many :items
- belongs_to :y_categories
