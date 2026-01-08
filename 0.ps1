$host.ui.RawUI.WindowTitle = 'Terminal'
ping.exe -n 1 -w 1000 baidu.com >$null 2>$null
$reach = $LASTEXITCODE -eq 0
Write-Host $(if ($reach){'BAIDU REACHABLE'}else{'BAIDU UNREACHABLE'}) `
            -ForegroundColor $(if ($reach){'Green'}else{'Red'})
Start-Sleep -Seconds 2

#我是彩蛋
