# :blue_book: アプリ名
# **If-Then-Planner**
### if then プランニング法に特化した習慣化アプリケーション

#  :black_small_square: 概要

### 習慣化したい行動をIf Thenプランニング法を用いた形式で設定し、日々の頑張りを記録することで習慣化に導くためのアプリです
※If thenプランニング法とは・・・「Aを実行するときBをする」というように日常的に自分が必ずする行動やよく行く場所、時間などに紐づけて習慣化したい行動を実行するタイミングをあらかじめ決めておく方法です。(例　A:歯を磨いたら　B：筋トレをする, A:20時になったら　B:読書をする)

# :black_small_square: アプリのURL
### **https://if-then-plan-app.herokuapp.com/**

# テスト用アカウント
### メールアドレス：　test@test11
### パスワード　　：　test11

# :black_small_square: 利用方法
#### トップページ右上の「新規登録/ログイン」ボタンをクリックし新規登録/ログインします
#### トップページ右上の「＋」ボタンをクリックし、習慣化したい行動(以下「タスク」と総称します)の作成ページに遷移します
#### タスク作成ページで習慣化の行動や習慣化するための月間目標数値などを入力し「習慣化スタート！」ボタンをクリックすることでタスクを作成できます
#### トップページに表示されているタスクごとに編集・削除ボタンがあり、編集ボタンをクリックするとタスクの編集ページに遷移し編集することができます。削除ボタンをクリックするとタスクを削除できます
#### トップページに表示されているタスクの中で記録したいタスクの「THEN:」の後の記述部分をクリックするとクリックしたタスクのカレンダーページに遷移します
#### カレンダーページの「記録を登録する」ボタンをクリックすると記録作成ページに遷移します
#### 記録作成ページで記録したい日付と実行記録を入力し「保存する」ボタンをクリックすることで記録を保存できます
#### カレンダーページでは保存した記録の日付とカレンダーの日付がリンクしており、視覚情報でタスクの定着度や目標までの進捗を確認できます

# :white_check_mark: 課題解決
| ユーザーストーリーから考える課題               | 課題解決             |
| ----------------------------------------  | ------------------ |
| 習慣化したいことがあるけど続かず習慣化できない  | 習慣化したいことをそのままリスト化するのではなく、If Thenプランニング法を用いた形式でリスト化することで習慣化を促進できます |
| 習慣化のための努力が実感できない  | 記録管理機能により記録と記録する日付を保存できます。また、保存した記録の合計値とタスク作成に設定した目標数値達成までの残り数値を自動で出力し、現状どれぐらい行動できているかに加えゴールまでの現在位置まですぐに把握できます |
| 習慣化したいけどモチベーションが維持できない | カレンダーに記録を表示させ、記録した日の背景色を変えることで今までの習慣化のための努力が可視化できモチベーションを持続することができます |
| 

# :black_small_square: 要件定義
| 機能            | 要件                                                                  |
| -------------- | --------------------------------------------------------------------- |
| ユーザー管理機能  | ・新規登録/ログイン画面で情報を入力しログイン状態のトップページへ遷移する<br>・ログイン状態のユーザーはタスク作成ボタンとユーザーのニックネームが表示されている<br>・ログアウト状態のユーザーはログイン、新規登録ボタンが表示されている                           |
| タスク管理機能    | ・新規作成ボタンからタスク作成画面に飛び、習慣化したいタスクや習慣化するための行動や目標数値など詳細に登録できるようにする<br>・登録したタスクがユーザーのトップページに表示されている<br>・タスクに編集、削除ボタンを作り、それぞれの機能が実行されるようにする |
| カレンダー表示機能 | ・トップページのタスクをクリックするとクリックしたタスクのカレンダーページに遷移する<br>・カレンダーページにカレンダーが表示されていて、前月/翌月ボタンのクリックでカレンダーの内容が月によって変わる<br>・登録した記録がカレンダーに表示されている（登録した日付がカレンダーに表示されている日付とリンクしている）   |

# :black_small_square: 実装した機能について
## ユーザー管理機能
#### ログインすればタスク作成ボタンが表示されます
#### ログインすればユーザーのニックネームが表示され、ニックネームにカーソルを当てるとログアウトボタンが表示されます
[![Image from Gyazo](https://i.gyazo.com/fbddfca74d269490badc9a870a88427a.gif)](https://gyazo.com/fbddfca74d269490badc9a870a88427a)
## タスク管理機能
#### 習慣化したい行動の入力はif then形式で入力するフォームとなっている
#### トップページに表示されているタスクには編集ボタンと削除ボタンが表示されていて、ボタンをクリックするとそれぞれ編集/削除できます
#### タスクの内容によって記録する数値の単位が違うのでそれに対応できるよう単位のフォームを設置しています(勉強なら時間,読書ならページなど)
#### 入力する項目のフォーム内にわかりやすいよう記入例を表示させています
[![Image from Gyazo](https://i.gyazo.com/6296d9aa65175c1ef702c719d9ca569a.gif)](https://gyazo.com/6296d9aa65175c1ef702c719d9ca569a)
## タスク記録機能
#### 記録する日付の入力フォームは入力しやすいよう右側のカレンダーマークをクリックするとカレンダーが表示され記録したい日にちをクリックすることで日付が自動で入力される仕組みになっています
#### メモの入力フォームはメモする必要なければ空欄でも記録が保存できるようになっています
[![Image from Gyazo](https://i.gyazo.com/6ebceaf2e53566f7a5d87dd0d077d7e5.gif)](https://gyazo.com/6ebceaf2e53566f7a5d87dd0d077d7e5)

# :black_small_square: データベース設計
[![Image from Gyazo](https://i.gyazo.com/bece52923f1147e5532b96c9b4a4b4a1.png)](https://gyazo.com/bece52923f1147e5532b96c9b4a4b4a1)

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
| month_goal    | interer    | null: false                    |
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