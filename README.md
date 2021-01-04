# テーブル設計
<img width="1440" alt="8844c3ce519473cdc4798e8c5da84fe6" src="https://user-images.githubusercontent.com/72590314/103539354-3d689300-4edb-11eb-83e7-144a821d3d85.png">

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



