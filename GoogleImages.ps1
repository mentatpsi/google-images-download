$keywords = Get-Content C:\temp\UPCs.txt

foreach ($tex in $keywords) {
    $prog="cmd.exe"
    $params=@("/C","c:\python27\python";"C:\users\shay\Downloads\google-images\google-images-download-master\google-images-download.py"; ' -k "' + $tex + '" -l 3')
    Start-Process $prog $params
    Start-Sleep 15
}


