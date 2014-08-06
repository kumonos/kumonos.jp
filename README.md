# kumonos.jp

は [Middleman](http://middlemanapp.com/) をつかっています

## 開発環境構築

Ruby と bundler があれば、 `git clone` して下記実行するだけです。

```
$ bundle install --path vendor/bundle --jobs=4
```

## サーバー起動

```
$ bundle exec middleman server
```

## 静的ファイルのビルド

```
$ bundle exec middleman build
```
