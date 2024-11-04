function Write-Log {
    param(
        [string]$Message,
        [string]$Level = "INFO"
    )
    
    if ($config.EnableLogging) {
        $logFile = Join-Path $config.LogPath "git-operations.log"
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        $logMessage = "$timestamp [$Level] $Message"
        
        if (!(Test-Path $config.LogPath)) {
            New-Item -ItemType Directory -Path $config.LogPath -Force | Out-Null
        }
        
        Add-Content -Path $logFile -Value $logMessage
        Write-Host $logMessage
    }
} 