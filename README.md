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


アプリ名  
  self-introdution
概要  
  ブログサイトをrailsにて自作いたしました。制作背景といたしましては、自分で発信するためのツールを自作してみたいと思っていたからです。他にはweb制作におけるレスポンシブデザインの練習も兼ねて作成いたしました。

機能紹介  
  ・user[admin]を用いて、管理者のみが記事の編集が可能  
  ・マークダウン記法による記事作成  
  ・下書き機能  
  ・記事編集中に非同期で下書きの確認が可能  
  ・cssフレームワークのbootstrapを用いてレスポンシブデザインにすることでモバイル端末用のビューのコーディングが不要  

  工夫したこと  
    ・cssフレームワークのbootstrapを用いることにより、レスポンシブなデザインにしたこと。デザインが統一されるので携帯とPC、タブレットなど多くのデバイスからの閲覧に対処できる。  
    ・記事投稿の際にプレビューを非同期で表示できるようにしたこと。  

  開発環境  
    ・ruby2.5.1  
    ・rails 5.2.4.1  


  課題や今後実装したい機能  
    ・月別のアーカイブ機能  
    ・タグ付機能  
    ・見た目の改善
  DB設計

  ## usersテーブル

  |Column|Type|Options|
  |------|----|-------|
  |name|string|null: false|
  |email|string|null: false|
  |password|string|null: false|
  |admin|boolean|default: false|

  ## postテーブル
  |Column|Type|Options|
  |------|----|-------|
  |title|string|null: false
  |content|text|
  |status|integer|null: false|default: 0
  |title_image|string