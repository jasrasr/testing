# Install Git using winget
Write-Output "Installing Git..."
winget install --id Git.Git -e --source winget

# Confirm installation
git --version
Write-Output "Git has been installed successfully."
