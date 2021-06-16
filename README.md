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


## circleテーブル
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