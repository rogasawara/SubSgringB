<# �����̕�������o�C�g���������������؂�o��
--�ς�߁[��--
str�@�Ώە����� 
byte �o�C�g��
--------------#>
function SubStringByte{
    Param(
        [String]$str = "",
        [int]$byte = 0
    )

    # �J�E���^�[
    $i = 1

    while ( $TRUE )  {
        # �؂�o�������������w��o�C�g���𒴂���܂ő�����
        try {
            $tmp = $str.SubString(0,$i)
        } catch  [Exception] { # TODO exeption���i��
            # �w��o�C�g������������I�[�o�[���Ă���ꍇ
            echo "�����G���[�i�w��̃o�C�g����������𒴂��Ă��܂��j"
            return ""
        } finally {
        }
        $count =  [System.Text.Encoding]::GetEncoding("Shift_Jis").GetByteCount($tmp)
        if ($byte -lt $count){
            # �w��o�C�g�����I�[�o�[���Ă���ꍇ
            return $str.SubString(0,$i - 1)
        }elseif ($byte -eq $count){
            # �w��o�C�g���ƈ�v���Ă���ꍇ
            return $str.SubString(0,$i)
        }else{
            # �w��o�C�g����菭�Ȃ��ꍇ
            $i =  $i + 1
        }
    }
}