# I am using a Macbook with powershell on it, cmdlet is only available on Windows as it uses some Windows OS APIs that aren't available on other platforms. Nearest appromixation to the command for unix would be [System.Net.Dns]::GetHostAddresses($(hostname))

function IPv4{
[System.Net.Dns]::GetHostAddresses($(hostname)) | Select-String "192.*"
}
write-host(IPv4) 
$IP = IPv4   
Write-Host(“This machine’s IP is $IP”)

