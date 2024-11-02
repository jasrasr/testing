# Parameters
$repoPath = "$HOME\Documents\GitHub\YourRepository"

# Navigate to the repository folder
Set-Location -Path $repoPath

# Pull latest changes
Write-Output "Pulling latest changes from GitHub..."
git pull origin main

Write-Output "Repository updated with latest changes."
