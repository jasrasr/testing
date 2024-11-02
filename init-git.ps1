# Parameters
$repoName = "YourNewRepo"
$repoPath = "$HOME\Documents\GitHub\$repoName"

# Create and navigate to the directory
New-Item -Path $repoPath -ItemType Directory
Set-Location -Path $repoPath

# Initialize Git repository
Write-Output "Initializing new Git repository..."
git init

# Create a README file
Add-Content -Path "$repoPath\README.md" -Value "# $repoName"

# Set up remote repository (replace with your actual GitHub repo URL)
$remoteURL = "git@github.com:YourUsername/$repoName.git"
git remote add origin $remoteURL

# Stage, commit, and push the README file
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main

Write-Output "New GitHub repository initialized, committed, and pushed to GitHub."
