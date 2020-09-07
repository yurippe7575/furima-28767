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
| birth_day            | integer | null: false |
| email                 | string | null: false,unique: true|
| password              | string | null: false |



### Association

- has_many :item_purchases
- has_many :address, through: item_purchases

## users_userinfoテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user_id   | references | null: false, foreign_key: true |
| item_purchases_id  | references | null: false, foreign_key: true |

### Association
- belongs_to :item_purchases
- belongs_to :users

## item_purchases テーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| yubin_number          | string | null: false |
| prefecture            | integer | null: false |
| city                  | string | null: false |
| banchi                | string | null: false |
| building              | string | null: false |
| denwa_number          | string | null: false |

## items テーブル
| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| setumei               | text   | null: false |



