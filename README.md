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
- has_many :addresses

## users_itemsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| users   | references | null: false, foreign_key: true |
| items  | references | null: false, foreign_key: true |

### Association
- belongs_to :items
- belongs_to :users

## addressesテーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| yubin_number          | string | null: false |
| prefecture            | integer | null: false |
| city                  | string | null: false |
| banchi                | string | null: false |
| building              | string | |
| denwa_number          | string | null: false |

### Association

- belongs_to :item
- belongs_to :user


## items テーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| setumei               | text   | null: false |
| categori              | integer | null: false |
| status                | integer | null: false |
|  haisoufee            | integer | null: false |
|  chiiki               | integer | null: false |
|  nisuu                | integer | null: false |
|  kakaku                | integer | null: false |

### Association

- belongs_to :addresses
- belongs_to :users



