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

<!-- imageはActiveStorage -->

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

<!-- - belongs_to :モデル名  ActiveHash用 -->



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

<!-- - belongs_to : モデル名 ActiveHash用 -->

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