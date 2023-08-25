# README.md

## ido_save.bat

### Overview

PC向けゲーム Initial Drift Online([Steam Store Page](https://store.steampowered.com/app/1456200/Initial_Drift_Online/))にて、端末間でセーブデータを移管・共有したい場合に利用します。

本ゲームは **データの一部をSteamクラウドで更新・共有している** 一方、車の所有データやコントローラの登録情報など一部を **Windowsレジストリに保管している** ため、これを反映させなければ個別n端末間で完全にゲームデータを復元して遊べないという問題があります。

その際、いちいちレジストリエディタを開いてレジストリ操作するの面倒な人向け。


下記の準備を行ったうえで実行すると、実行した断面のIDOのレジストリが保存されます。

**実行する際はファイルを右クリック -> 管理者権限で実行** をするとWindows Smart Scanに殺されずに済みます。

### 実行環境

Windows OS(以外でIDOする人いないと思うのであれですが……。)

### ファイル形式

bat/ANSI

**文字コードをANSIから変更するとおそらく動きません。**

### やってほしいこと

事前にbatファイルを **Windows謹製のメモ帳** で開き、変数 `defaultsavepath` の中のパスを保存したいディレクトリパスに変更してください。

```bat
set defaultsavepath=<YOUR SAVE DIRECTORY PATH>
```

**注意事項:**

- ディレクトリパスに半角スペースが含まれるときは、**必ずダブルクォーテーションで囲ってください**
- 上書き保存する際は問題ないかと思いますが、 **文字コードはANSIで保存します**

### 補足情報

- [Overview](#overview)に記載の内容ソース: [Youtube: BACKUP YOUR IDO SAVE FILE! - Initial Drift Online Tutorial](https://www.youtube.com/watch?v=avirEc9puEw)
- Initial Drift Onlineレジストリ在処
    - `コンピューター\HKEY_CURRENT_USER\SOFTWARE\Rewindapp\Initial Drift`