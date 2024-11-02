# Parameters for the repository and local path
$repoURL = "git@github.com:YourUsername/YourRepository.git"
$localPath = "$HOME\Documents\GitHub\YourRepository"

# Create the local directory if it doesn’t exist
if (!(Test-Path -Path $localPath)) {
    New-Item -Path $localPath -ItemType Directory
    Write-Output "Created directory $localPath"
}

# Clone the GitHub repository
Write-Output "Cloning repository..."
git clone $repoURL $localPath

Write-Output "Repository cloned successfully to $localPath"
