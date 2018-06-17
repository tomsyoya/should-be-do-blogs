# Should Be Done \~こうしたら良いのに~

## overview

Ruby on Railsを学んだので、覚えた技術を使って作成したWebアプリです。  
以下のURLから動作しているものを触れます。

https://quiet-depths-77950.herokuapp.com/

![Topページ](https://user-images.githubusercontent.com/8188920/41164047-33e00332-6b75-11e8-860a-d0660d23b101.png)


”こうしたら良いのに”という議論のネタを投稿してみんなでアイディアを言い合うWebアプリです。
議論のネタにみんながコメントすることで「議論の深掘り」ができます。

現時点(2018/06/01)で提供している機能は以下の通り

- 議論したいスレッドの投稿
- 投稿されたスレッドに対するコメント
- 投稿されたスレッドのお気に入りボタン
- SNS(Facebook, Twitter)やEmailでのスレッドのシェア機能

## How To Use

以下の環境が準備されていることを前提としています

- Ruby 2.4.0 以上
- Rails 5.1.0 以上
- gemパッケージ bundlerのインストール（gem install bundler）
- PostgreSQL

### 各種gemのインストール

```
$ bundle install
```

### アプリケーションの起動

```
$ cd should-be-do-blogs/
$ rails s -b $IP -p $PORT
```

