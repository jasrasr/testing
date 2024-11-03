# Global configuration for Git automation scripts
$config = @{
    # Repository settings
    RepoName = "testing"
    RepoPath = "$HOME\Documents\GitHub\testing"
    RepoURL = "https://github.com/jasrasr/testing"
    
    # Git settings
    DefaultBranch = "main"
    
    # Logging
    LogPath = "$HOME\Documents\GitHub\testing\logs"
    EnableLogging = $true
}

# Export configuration
Export-ModuleMember -Variable config 