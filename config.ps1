# Global configuration for Git automation scripts
$config = @{
    # Repository settings
    RepoName = "testing"
    RepoPath = "$env:OneDrive\Documents\GitHub\jasrasr-test\testing"
    RepoURL = "https://github.com/jasrasr/testing"
    
    # Git settings
    DefaultBranch = "main"
    
    # Logging
    LogPath = "$env:OneDrive\Documents\GitHub\jasrasr-test\testing\logs"
    EnableLogging = $true
}

# Export configuration
Export-ModuleMember -Variable config 