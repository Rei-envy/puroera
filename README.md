# アプリケーション名
PUROERA

# アプリケーション概要
・プログラミングのエラー内容を共有し、他のエンジニアの解決に貢献できます。<br>
・共有された内容を見ることで、自分のエラーを解決できます。<br>
・自分が起きたエラーを質問して、回答を依頼することができます。<br>
・チャットルームで他のエンジニアとコミュニケーションが取れます。<br>

# URL
https://puroera.onrender.com

# テスト用アカウント
・Basic認証ID：rei<br>
・Basic認証パスワード：0310<br>
・メールアドレス：rei@rei<br>
・パスワード：rei310

# 利用方法
## 共有内容の投稿
1. ユーザーの新規登録を行います。
2. 右上の「共有する」ボタンから、共有内容の投稿ページに遷移します。
3. 内容（タイトル、カテゴリー、状況と仮説、解決方法、感想）を記述します。※感想は任意です。
4. ページ下部の「投稿する」ボタンをクリックします。

## コメントの投稿
1. ユーザーの新規登録を行います。
2. トップページの「共有掲示板」の一覧でタイトルをクリックし、詳細ページに遷移します。
3. 詳細ページ下部のコメントフォームから、コメントができます。

## 質問内容の投稿
1. ユーザーの新規登録を行います。
2. 右上の「質問する」ボタンから、質問内容の投稿ページに遷移します。
3. 内容（タイトル、カテゴリー、状況と仮説、やったこと、感想）を記述します。※やったことと、感想は任意です。
4. ページ下部の「質問する」ボタンをクリックします。

## 回答の投稿
1. ユーザーの新規登録を行います。
2. ヘッダーの「質問掲示板」をクリックし、質問掲示板ページに遷移します。
3. 質問掲示板の一覧でタイトルをクリックし、詳細ページに遷移します。
4. 詳細ページ下部の回答フォームから、回答ができます。

## チャットルームでの交流
1. ユーザーの新規登録を行います。
2. ヘッダーの「マイチャット」をクリックし、マイチャットページに遷移します。
3. 右上の「チャットを作成する」ボタンをクリックし、チャットルーム作成ページに遷移します。
4. チャットルーム名とチャット相手を選び、「ルームを作成する」ボタンをクリックします。
5. チャットルームに遷移後、ページ右下にメッセージフォームが出現するため、そこでメッセージを入力し、「送信」ボタンをクリックすると送信できます。

# アプリケーションを作成した背景
自分のような未経験エンジニアをペルソナとして、エラーに対して時間がかかることが課題であると考えました<br>
課題の解決のために、誰かのエラーを解決した方法を教えてもらうことが必要だと考えました。また、解決方法が共有されていない場合は、質問をし経験者に教えてもらえるようにする必要もあると考えました。<br>
エラーを蓄積することでエラー解消までの時間を短縮でき、エラー内容をアウトプットすることで、スキルアップにも繋がります。<br>
また、既存のプラットフォームでは、コミュニケーションを取るためにSNSでフォローをしてDMを送るという手間がかかると感じたため、チャットルームもつけ交流ができるようにしました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1ld-nNYz02Ex-G_XjQkZQYn9lijlZ4FRtIBl0qZ07IT0/edit#gid=982722306)


# 実装した機能についての画像やGIFおよびその説明
## トップページ
どのページにも遷移できるようにヘッダーに記述しています。
[![Image from Gyazo](https://i.gyazo.com/35113450286776eec8659b2a0827946b.gif)](https://gyazo.com/35113450286776eec8659b2a0827946b)

## ユーザー登録機能
ユーザー情報を入力することで、投稿やチャットルームを作成できるようになります。
[![Image from Gyazo](https://i.gyazo.com/714d55fa11d9c766256280a64508d83a.gif)](https://gyazo.com/714d55fa11d9c766256280a64508d83a)

## エラー共有機能
内容（タイトル、カテゴリー、状況と仮説、解決方法、感想）を記述することで、投稿できるようになり、その内容がトップページに反映されています。
[![Image from Gyazo](https://i.gyazo.com/04f1879835a81510a68385ea4951274d.gif)](https://gyazo.com/04f1879835a81510a68385ea4951274d)

## コメント機能
ログイン状態であれば表示され、コメントを入力すると詳細ページに反映されています。
[![Image from Gyazo](https://i.gyazo.com/3a78544e6a4c0fa089a7be49c2da68a8.gif)](https://gyazo.com/3a78544e6a4c0fa089a7be49c2da68a8)

## エラー質問機能
内容（タイトル、カテゴリー、状況と仮説、やったこと、感想）を記述することで、質問できるようになり、その内容が質問掲示板ページに反映されています。
[![Image from Gyazo](https://i.gyazo.com/7e28787355dd34b993c092f326d0aac2.gif)](https://gyazo.com/7e28787355dd34b993c092f326d0aac2)

## 回答機能
ログイン状態であれば表示され、回答を入力すると詳細ページに反映されています。
[![Image from Gyazo](https://i.gyazo.com/9fd6d453086f6d07f9fa3b2238e3d04e.gif)](https://gyazo.com/9fd6d453086f6d07f9fa3b2238e3d04e)

## チャットルーム機能
### 新規ルーム作成機能
チャットルーム名とチャット相手を選び、「ルームを作成する」ボタンを押すと、チャットルームが作成されます。
[![Image from Gyazo](https://i.gyazo.com/5d238e8ad36a6d446bd57f74f321acf5.gif)](https://gyazo.com/5d238e8ad36a6d446bd57f74f321acf5)

### メッセージ投稿機能
チャットルームの右下で、メッセージを入力し、「送信」ボタンを押すと送信できます。
[![Image from Gyazo](https://i.gyazo.com/9df5f637a984ce5f9ea8037b0a787e6d.gif)](https://gyazo.com/9df5f637a984ce5f9ea8037b0a787e6d)

# 工夫したポイント
ユーザー目線に立ち、シンプルかつ使いやすいようにするためにフロント実装に特に力を入れました。<br>
工夫したポイントは5つあります。
1. ヘッダー部分からどのページにも遷移できるようにすることで、ページ間の遷移を減らしています。
2. 配色にもこだわり、メインカラーを水色とし、ベースカラーを白と黒とし、サイトに一貫性を持たせています。質問ページではメインカラーを紫として、共有ページとの違いを出すことで、現在どのページにいるのか分かりやすくしました。
3. 全体的に余白を空け、ブロックごとに詰まった印象にならないように注意しました。
4. ロゴも自作し、ユーザー登録や新規投稿ページでは、フリー素材のアイコン等を用いることで、直感的に使いやすいデザインにしました。
5. ボタンにカーソルを合わせた時のアクションを用意することで、操作性の高いサイトにしました。

# 実装予定の機能
・スマートフォンでも使いやすいようにレスポンシブ対応すること<br>
・SNSアカウントでもログインできるようにすること

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d18621f4ca258635a03d948bf993dfa9.png)](https://gyazo.com/d18621f4ca258635a03d948bf993dfa9)


# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many : shares
- has_many : questions
- has_many : comments
- has_many : answers
- has_many : rooms, through: :room_users
- has_many : messages

## shares テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| category_id   | integer    | null: false,                   |
| guess         | text       | null: false,                   |
| solution      | text       | null: false,                   |
| thought       | text       |                                |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to : user
- has_many : comments

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| share   | references | null: false, foreign_key: true |


### Association

- belongs_to : user
- belongs_to : share


## questions テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| category_id   | integer    | null: false,                   |
| hypothesis    | text       | null: false,                   |
| action        | text       |                                |
| thought       | text       |                                |
| user          | references | null: false, foreign_key: true |


### Association

- belongs_to : user
- has_many : answers

## answers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| answer  | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| question| references | null: false, foreign_key: true |


### Association

- belongs_to : user
- belongs_to : question


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many : room_users
- has_many : users, through: :room_users
- has_many : messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to : room
- belongs_to : user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to : room
- belongs_to : user

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/9ad7a9a5fc0415474bb5eb42b9edf9fa.png)](https://gyazo.com/9ad7a9a5fc0415474bb5eb42b9edf9fa)

# 開発環境
・フロントエンド(HTML/CSS、JavaScript)<br>
・バックエンド(Ruby on Rails)<br>
・インフラ<br>
・テスト（Rspec） <br>
・テキストエディタ（Visual Studio Code）<br>
・タスク管理（Github）

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
```
% git clone https://github.com/Rei-envy/puroera.git
% cd puroera
% bundle install
% rails db:create
% rails db:migrate
% yarn install
```
