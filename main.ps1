# Main script to manage all Git operations
param(
    [Parameter(Mandatory=$true)]
    [ValidateSet('setup', 'sync', 'pull')]
    [string]$Operation
)

# Import configuration and utilities
. (Join-Path $PSScriptRoot "config.ps1")
. (Join-Path $PSScriptRoot "utils\logging.ps1")

# Import operation scripts
. (Join-Path $PSScriptRoot "scripts\setup-repo.ps1")
. (Join-Path $PSScriptRoot "scripts\sync-repo.ps1")

switch ($Operation) {
    'setup' {
        Initialize-Repository
    }
    'sync' {
        Sync-Repository
    }
    'pull' {
        # Add pull operation here
    }
} 