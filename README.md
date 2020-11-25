## WEBサイト

### 記事の編集
mkdocsを使ってページを生成しています。
``` src/docs/ ``` 内のマークダウンを編集することで記事の内容を編集できます

### mkdocsの設定
``` src/mkdocs.yml ``` がmkdocsの設定ファイルです。  
[こちら](https://qiita.com/mebiusbox2/items/a61d42878266af969e3c) のサイトなどを参考に作りましたので、変更が可能です。  

### ローカル環境での編集
#### Windows
wslやvmでLinuxの環境を作成し、python3・makeコマンドが使えるようにしてください。  
リポジトリをクローンし、ルートで ```$ make install_dependence ```を実行後、 ``` $ mkdocs serve ``` で編集中の内容を即座に確認できます。

#### Mac/Linux
リポジトリをクローンし、ルートで ```$ make install_dependence ```を実行後、 ``` $ mkdocs serve ``` で編集中の内容を即座に確認できます。

### Tip
Markdownで
```
!!! Note
!!! Tip
```
などが利用できます。強調したいところを囲えるので便利です。


### ページのビルド
ファイルを編集してコミット(push)した段階でGithubActionsのworkflowが走りページをビルド・デプロイします。  
コミットidの横の 🟠 が　✅　になるとページのデプロイが完了したことを示します。  
