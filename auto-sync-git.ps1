# Parameters
$repoPath = "$HOME\Documents\GitHub\YourRepository"

# Navigate to the repository folder
Set-Location -Path $repoPath

# Add, commit, and push changes
Write-Output "Syncing changes to GitHub..."
git add .
git commit -m "Auto-sync changes"
git push origin main

Write-Output "Repository synced with GitHub."
