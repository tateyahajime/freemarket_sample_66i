# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lady = Category.create(:name=>"レディース")
mens = Category.create(:name=>"メンズ")
baby = Category.create(:name=>"ベビー・キッズ")
book = Category.create(:name=>"本・音楽・ゲーム")
toy = Category.create(:name=>"おもちゃ・ホビー・グッズ")

lady_tops = lady.children.create(:name=>"トップス")
lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
mens_tops = mens.children.create(:name=>"トップス")
mens_jacket = mens.children.create(:name=>"ジャケット/アウター")
baby_lady = baby.children.create(:name=>"ベビー服（女の子）")
baby_mens = baby.children.create(:name=>"ベビー服（男の子）")
book_book = book.children.create(:name=>"本")
book_cartoon = book.children.create(:name=>"漫画")
toy_toy = toy.children.create(:name=>"おもちゃ")
toy_talent = toy.children.create(:name=>"タレントグッズ")

lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"その他"}])
lady_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"その他"}])
mens_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"その他"}])
mens_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"その他"}])
baby_lady.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"}])
baby_mens.children.create([{:name=>"トップス"}, {:name=>"アウター"}, {:name=>"パンツ"}])
book_book.children.create([{:name=>"文学/小説"}, {:name=>"人文/社会"},{:name=>"ノンフィクション/教養"}])
book_cartoon.children.create([{:name=>"全巻セット"}, {:name=>"少年漫画"}, {:name=>"少女漫画"}])
toy_toy.children.create([{:name=>"キャラクターグッズ"}, {:name=>"ぬいぐるみ"},{:name=>"小物/アクセサリー"}])
toy_talent.children.create([{:name=>"アイドル"}, {:name=>"ミュージシャン"}, {:name=>"タレント/お笑い芸人"}])

