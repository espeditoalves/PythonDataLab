function prompt {
    $path = (Get-Location).Path
    $folderName = $path.Split('\')[-1]
    $prompt = "$folderName> "
    Write-Host -NoNewLine -ForegroundColor Cyan $prompt
    return " "
}



