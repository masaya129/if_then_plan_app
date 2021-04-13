# テーブル設計

## users テーブル

| Column              | Type   | Option                    |
| ------------------  | ------ | ------------------------- |
| nickname            | string | null: false               |
| encrypted_password  | string | null: false               |
| email               | string | null: false, unique: true |

### Association

- has_many :tasks
- has_many :records


## tasks テーブル

| Column        | Type       | Option                         |
| --------------| ---------- | ------------------------------ |
| if_task       | string     | null: false                    |
| then_task     | string     | null: false                    |
| title         | string     | null: false                    |
| unit          | string     | null: false                    |
| month_goa     | interer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :records


## records テーブル

| Column        | Type       | Option                         |
| ------------  | ---------- | ------------------------------ |
| count         | integer    | null: false                    |
| memo          | text       |                                |
| start_time    | datetime   | null: false                    |
| user          | references | null: false, foreign_key: true |
| task          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :task