
<# 引数の文字からバイト数分だけ文字数切り出し
--ぱらめーた--
str　対象文字列 
byte バイト数
--------------#>
function SubStringByte{
    Param(
        [String]$str = "",
        [int]$byte = 0
    )

    # カウンター
    $i = 1

    while ( 1 -eq 1 )  {
        # 切り出した文字数が指定バイト数を超えるまで続ける
        try {
            $tmp = $str.SubString(0,$i)
        } catch  [Exception] { # TODO exeptionを絞る
            # 指定バイト数が文字列をオーバーしている場合
            echo "引数エラー（指定のバイト数が文字列を超えています）"
            return ""
        } finally {
        }
        $count =  [System.Text.Encoding]::GetEncoding("Shift_Jis").GetByteCount($tmp)
        if ($byte -lt $count){
            # 指定バイト数がオーバーしている場合
            return $str.SubString(0,$i - 1)
        }elseif ($byte -eq $count){
            # 指定バイト数と一致している場合
            return $str.SubString(0,$i)
        }else{
            # 指定バイト数より少ない場合
            $i =  $i + 1
        }
    }
}


