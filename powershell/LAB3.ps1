function IPv4{
    [System.Net.Dns]::GetHostAddresses($(hostname)) | Select-String "192.*"
    }
     
    $IP = IPv4   
    
function Name{                                                         
    [Environment]::UserName                             
    }
    
    $ID = Name 
    

function Hostname {
    [System.Net.Dns]::GetHostName()
}

$HostID = Hostname 


function Get-PSVersion {         
     if (test-path variable:psversiontable) {$psversiontable.psversion} else {[version]"1.0.0.0"}
    }
    
    $PSVer = Get-PSVersion  
    
   function unixtime {
    Get-Date -UFormat "%A,%m,%d,%Y" 

   }
    $tmd = unixtime

 (“This machine’s IP is $IP. User is $ID. Hostname is $HostID. PowerShell Version $PSVer. Today's Date is $tmd" ) | out-file -FilePath /Users/mayank/Desktop/file.txt -Append

Write-Host("This machine’s IP is $IP. User is $ID. Hostname is $HostID. PowerShell Version $PSVer. Today's Date is $tmd")