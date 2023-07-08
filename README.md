## ローカル環境構築
```
# クローン
git clone URL

# パッケージ
bundle install

# 設定ファイル
cp .env.example .env 

# DB用意
rails db:create
rails db:migrate

# サーバー起動
rails server -b 0.0.0.0
```