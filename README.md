# 概要

- 自分の作成したオリジナルのリストを投稿、共有が出来るポートフォリオです。  

- 達成したいことをリストに書き込み、投稿し、皆に共有することで意識を高め合う事が出来ます。  また、同じような目標を掲げている  ユーザーの投稿から、目標達成の為にはどのような手段・方法があるのかと言った情報を参考にする事も出来るサービスです。


# テーマ

- 自分の為だけのTODOアプリは多くありますが、インスタグラムや他のSNSサイトのように他のユーザーに自分が取り組んでいる事を  シェア出来るTODOアプリがあったら面白いのではないかと思い作成しました。

- サイト名はの意味は、Achieveで達成するというのがテーマです。


# 画面紹介

<img width="1440" alt="22a1ad8cf5323575392656eae4baed93" src="https://user-images.githubusercontent.com/72590314/103551720-1cf60400-4eee-11eb-9b05-f2c2c0e17449.png">
　
 
# 機能 • 技術

- HTML/CSS

    - Bootstrap
    - SCSS

- Ruby on Rails

    - ユーザー機能
        - ユーザー認証機能(Devise)
        - マイページ機能
    
    - リスト機能
        - リストの投稿機能
        - リストの編集機能
        - リストの更新機能
        - リストの削除機能

    - カード機能
        - カードの投稿機能
        - カードの編集機能
        - カードの更新機能
        - カードの削除機能


# 環境

- フロントエンド

    - Bootstrap 4.5.3
    - SCSS
    - JavaScript, jQuery

- バックエンド

    - Ruby 2.6.5
    - Rails 6.0.0

- インフラ

    - AWS (RDS for MySQL)
    
    
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



