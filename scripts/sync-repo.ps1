# Enhanced version of auto-sync-git.ps1
. (Join-Path $PSScriptRoot "..\config.ps1")
. (Join-Path $PSScriptRoot "..\utils\logging.ps1")

function Sync-Repository {
    try {
        Set-Location -Path $config.RepoPath
        Write-Log "Starting repository sync"
        
        # Check for changes
        $status = git status --porcelain
        if ($status) {
            Write-Log "Changes detected, proceeding with sync"
            git add .
            git commit -m "Auto-sync changes $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
            git push origin $config.DefaultBranch
            Write-Log "Repository synced successfully" "SUCCESS"
        } else {
            Write-Log "No changes to sync" "INFO"
        }
    }
    catch {
        Write-Log "Error syncing repository: $_" "ERROR"
        throw $_
    }
} 