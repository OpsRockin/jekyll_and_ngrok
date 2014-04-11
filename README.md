# Demo for Container Study vol.3


## 準備

ngrokサーバの情報をどちらかの方法でセット。

- `.ngrok`を任意の内容で作成して、リポジトリに登録する。
- `ci/run_ngrok.sh`に`.ngrok`を生成する処理を追加。


## 使い方

1. git になにかをpushします。
2. git log でコミットID(sha1)を取得します。
3. http://コミットID.ng1.xenzai.net にアクセス！ (有効になるまで数十秒かかります。)
4. URLは数分間だけ有効です

