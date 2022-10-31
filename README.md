# microServicePractice

## About
microserviceの練習として以下の異なる言語、フレームワークを1つのserviceとして、microserviceを構築する。
API Gatewayパターンを採用する。

ECサイトをmicroserviceとして構築することを想定する。
ログイン等の機能は持たず、商品ページを表示する程度の機能とする。

各serviceの機能は以下の通り。

### 商品サービス
ECサイトにて販売されている商品データが格納された商品DBに対し、CRUD操作を行う機能を持つ。

技術スタック
- SpringBoot(Java)
- mysql

### レビューサービス
商品に対するレビィーデータを格納したレビューDBに対し、CRUD操作を行う機能を持つ。

技術スタック
- Sinatra(Ruby)
- mysql

### 企業サービス
ECサイトに登録した販売企業データを格納した企業DBに対し、CRUD操作を行う機能を持つ。

技術スタック
- Express(JavaScript)
- mysql

### ユーザサービス
ECサイトに登録したユーザデータを格納したユーザDBに対し、CRUD操作を行う機能を持つ。

技術スタック
- Express(JavaScript)
- mysql

## Technology used

- SpringBoot(Java)　API Gateway
- SpringBoot(Java)
- Sinatra(Ruby)
- Express(JavaScript)

