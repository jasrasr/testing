# Update PowerShell to the Latest Version
# This installs PowerShell Core, ensuring you’re using the latest version
winget install --id Microsoft.Powershell --source winget

# Install Git
# Git is necessary to clone repositories and manage version control
winget install --id Git.Git -e --source winget

# Define a New Folder Path for the Repository
# Replace 'YourRepoFolder' with your desired folder name
$folderPath = "c:\users\$($env:username)\Documents\GitHub\testing"

# Create the New Folder if it doesn’t exist
# This will hold your cloned repository
New-Item -ItemType Directory -Path $folderPath -Force

# Navigate into the New Folder
Set-Location -Path $folderPath

# Clone the Repository
# Replace '<your-repo-URL>' with the URL of your GitHub repository
git clone https://github.com/jasrasr/testing .

# Pull the Latest Changes from the Remote Repository (if any)
git pull origin main

# Stage All Files for the First Commit
# This stages any changes made, preparing them for a commit
git add .

# Commit the Changes with a Message
# Replace 'Initial setup from new computer' with an appropriate commit message
git commit -m "Initial setup from new computer"

# Push the Changes to the Remote Repository
# This uploads your changes to the main branch on GitHub
git push origin main
