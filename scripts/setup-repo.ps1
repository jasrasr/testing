# Enhanced version of setup-github-repo-locally.ps1
. (Join-Path $PSScriptRoot "..\config.ps1")
. (Join-Path $PSScriptRoot "..\utils\logging.ps1")

function Initialize-Repository {
    try {
        Write-Log "Starting repository setup"
        
        # Create directory if it doesn't exist
        if (!(Test-Path -Path $config.RepoPath)) {
            New-Item -Path $config.RepoPath -ItemType Directory -Force
            Write-Log "Created directory: $($config.RepoPath)"
        }
        
        # Clone repository
        Write-Log "Cloning repository from $($config.RepoURL)"
        git clone $config.RepoURL $config.RepoPath
        
        # Initial setup
        Set-Location -Path $config.RepoPath
        git config core.autocrlf true
        
        Write-Log "Repository setup completed successfully" "SUCCESS"
    }
    catch {
        Write-Log "Error setting up repository: $_" "ERROR"
        throw $_
    }
} 