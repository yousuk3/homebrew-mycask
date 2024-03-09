# 自分専用のHomebrew Tapの作成方法

この手順では、自分専用のHomebrew Tapを作成し、GitHubにアップロードして独自のCaskを運用する方法を説明します。

1. **Tapの作成**:
   ローカルで新しいtapを作成します。
   ```
   brew tap-new ユーザー名/tap名
   ```

2. **Caskの追加**:
   作成したtap内にCaskを追加します。Caskファイルは`/Casks`ディレクトリに配置されます。

3. **GitHubにアップロード**:
   作成したtapをローカルリポジトリにプッシュし、GitHubにアップロードします。
   ```
   cd /usr/local/Homebrew/Library/Taps/ユーザー名/homebrew-tap名
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

4. **Homebrewにtapを追加**:
   あなたのHomebrewで、作成したtapを追加します。
   ```
   brew tap ユーザー名/tap名
   ```

これで、自分の専用のtapがHomebrewに追加され、tap内のCaskをインストールできるようになります。

# tapにcaskを追加する手順

1. **Caskのトークンとファイル名を生成する:**
   ```
   $(brew --repository homebrew/cask)/developer/bin/generate_cask_token "/full/path/to/new/software.app"
   ```

   - このコマンドを実行すると、提案されたトークン（名前）、ファイル名、およびCaskのヘッダーラインが表示されます。これらの情報を控えておきます。

2. **Caskファイルを生成する:**
   ```
   brew create --cask download-url --set-name my-new-cask
   ```
   ここで、`download-url`にはアプリケーションのダウンロードURLを指定し、my-new-cask.rbが生成されます。

   - このコマンドを実行すると、指定されたURLからファイルがダウンロードされ、SHA256ハッシュが計算されます。その後、Caskファイルのテンプレートが生成されます。

3. **Caskファイルを編集してトークンとファイル名を設定する:**
   - 生成されたCaskファイルをテキストエディタで開き、`generate_cask_token`で提案されたトークン（名前）とファイル名を設定します。

4. **自分専用のtapにCaskファイルを移動する:**
   ```
   mv /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Casks/<ファイル名>.rb /usr/local/Homebrew/Library/Taps/<GitHubユーザー名>/my-tap/Casks/
   ```
