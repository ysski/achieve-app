# 概要
- 自分の作成したオリジナルのリストを投稿、共有が出来るポートフォリオです。  

- 達成したいことをリストに書き込み、投稿し、皆に共有することで意識を高め合う事が出来ます。  また、同じような目標を掲げているユーザーの投稿から、目標達成の為にはどのような手段・方法があるのかと言った情報を参考にする事も出来るサービスです。

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

* has_many :lists



## lists テーブル

| Column     | Type       | Options           |
| ---------- | ---------- | ----------------- |
| list_title | string     | null: false       |
| user       | references | foreign_key: true |

### Association

* has_many :cards
* belongs_to :user



## cards テーブル

| Column     | Type   | Options           |
| ---------  | ------ | ----------------- |
| card_title | string | null: false       |
| memo       | text   | null: false       |
| list       | string | foreign_key: true |

### Association

* belongs_to :list



