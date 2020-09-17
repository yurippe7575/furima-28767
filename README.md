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


# テーブル設計

## users テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| family_name           | string  | null: false |
| first_name            | string  | null: false |
| family_name_kana      | string  | null: false |
| first_name_kana       | string  | null: false |
| birth_day             | date    | null: false |
| email                 | string | null: false,unique: true|
| password              | string | null: false |



### Association

- has_many :items
- has_many :purchase




## addressesテーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| yubin_number          | string | null: false |
| prefecture            | integer | null: false |
| city                  | string | null: false |
| banchi                | string | null: false |
| building              | string | |
| denwa_number          | string | null: false |
| purchase_id          | intger | foreign_key: true |


### Association

belongs_to :purchase

## items テーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| setumei               | text   | null: false |
| categori              | integer | null: false |
| status                | integer | null: false |
|  haisou_cost            | integer | null: false |
|  place               | integer | null: false |
|  days                | integer | null: false |
|  cost               | integer | null: false |
| user_id               | integer | foreign_key: true|
### Association


- belongs_to :user
- has_one :purchase


# purchase テーブル
| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| user_id               | integer | foreign_key: true|
| items_id              | integer | foreign_key: true|

- belongs_to :user
- belongs_to :item
- has_one :address



