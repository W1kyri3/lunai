function ips
{
  (Invoke-WebRequest ifconfig.me/ip).Content.Trim()
}
ips
