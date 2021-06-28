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


## userテーブル
|Column               |Type  |Options                 |
|---------------------|------|------------------------|
|e-mail               |string|null: false, default: ""|
|encrypted_password   |string|null: false, default: ""|
|password_confirmation|string|null; false             |
|---------------------|------|------------------------|

### Association
- has_one :profile

## profileテーブル
|Column                     |Type      |Options                           |
|---------------------------|----------|----------------------------------|
|family_name<姓>            |string    |null: false                       |
|first-name<名>             |string    |null: false                       |
|family_name_prono<姓カナ>  |string    |null: false                       |
|first-name_pronp<名カナ>   |string    |null: false                       |
|postal_code<郵便番号>      |string    |null: false                       |
|prefecture<都道府県>       |integer   |null: false                       |
|address<市区町村>          |string    |null: false                       |
|street<番地>               |string    |null: false                       |
|building<建物名>           |string    |                                  |
|phone_number<電話番号>     |string    |null: false                       |
|birthday<誕生日>           |date      |null: false                       |
|sex<性別>                  |integer   |null: false                       |
|body_weight<体重>          |integer   |null: false                       |
|user                       |references|null: false, foreign_key, true    |
|---------------------------|----------|----------------------------------|

### Association
- has_one :user



## cooked_foodテーブル
|Column                     |Type       |Options                           |
|---------------------------|-----------|----------------------------------|
|meal_date<食事日>          |string     |null: false                       |
|meal_time<食事どき>        |string     |null: false                       |
|ganre<ジャンル>            |string     |null: false                       |
|shop_name<販売店>          |string     |null: false                       |
|dish_name<料理名>          |string     |null: false                       |
|price<購入金額>            |integer    |null: false                       |
|meal_quantity<摂取量>      |integer    |null: false                       |
|calorie<カロリー>          |integer    |null: false                       |
|protein<タンパク質>        |integer    |null: false                       |
|carbohydrate<炭水化物>     |integer    |null: false                       |
|sugar_content<糖質>        |integer    |null: false                       |
|lipid<脂質>                |integer    |null: false                       |
|fiber<食物繊維>            |integer    |null: false                       |
|salt<塩分>                 |integer    |null: false                       |
|user_id                    |integer    |null: false                       |
|---------------------------|-----------|----------------------------------|

### Association
- has_one :user



## cookingテーブル
|Column                     |Type       |Options                           |
|---------------------------|-----------|----------------------------------|
|meal_name<食事名>          |string     |null: false                       |
|meal_weight<食事量>        |string     |null: false                       |
|---------------------------|-----------|----------------------------------|
### Association
- has_many :foods


## cooking_foodテーブル
|Column                     |Type       |Options                           |
|---------------------------|-----------|----------------------------------|
|cooking_id                 |references |null: false, foreign_key, true    |
|food_id                    |references |null: false, foreign_key, true    |
|---------------------------|-----------|----------------------------------|
### Association
- belongs_to :cooking
- belongs_to :food

## foodテーブル
|Column                     |Type       |Options                           |
|---------------------------|-----------|----------------------------------|
|food_name<食材名>          |string     |null: false                       |
|food_weight<食材量>        |string     |null: false                       |
|---------------------------|-----------|----------------------------------|
### Association
- has_many :cookings

