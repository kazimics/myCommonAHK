#s:: ;win+s 提醒打卡

nowHour = %A_Hour%
if( nowHour > 17 )
{
  MsgBox, 4,, 下班打卡了吗 ?
  IfMsgBox, No
      return
  ; 否则, 用户选择了是.
  DllCall("user32.dll\LockWorkStation")
} else {
  DllCall("user32.dll\LockWorkStation")
}