SubSgringB
==========
バイト数での抜き出し

 power shell のスクリプト実行許可設定
 Restricted
 →すべてのスクリプトが実行禁止。PowerShellインストール直後のデフォルト設定

 AllSigned
 →署名されているスクリプトのみが実行可能。署名されていないスクリプトは実行禁止

 RemoteSigned
 →ローカルに保存されているスクリプトは実行可能。
 インターネットからダウンロードしたスクリプト（非ローカルのスクリプト）は、署名されてい  るもののみが実行可能

 Unrestricted
 →すべてのスクリプトが実行可能。
 ただしインターネットからダウンロードしたスクリプトは、実行するかどうかが確認されるので、
 ユーザーが明示的に許可した場合のみ実行される




Set-ExecutionPolicy RemoteSigned // ポリシーの設定
Get-ExecutionPolic #確認