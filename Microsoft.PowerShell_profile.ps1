# Initialize Oh My Posh with custom theme
oh-my-posh init pwsh --config 'C:\Users\<username>\AppData\Local\Programs\oh-my-posh\themes\kali.omp.json' | Invoke-Expression

# Unzip function using tar
function unzip {
    param (
        [string]$file
    )
    tar -xf $file
}

# Zip function with help option
function zip {
    param (
        [string]$file1,
        [string]$file2
    )
    
    # Check if "--help" is entered as an argument
    if ($file1 -eq "--help") {
        Write-Output "Usage: zip output.zip input.txt or folder"
    } else {
        # Run tar to create a zip archive
        tar -a -c -f $file1 $file2
    }
}

# Custom Remove-Item function with confirmation prompt
function Remove-Item {
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]$Path,
        
        [switch]$Force,
        [switch]$Recurse
    )
    
    if (Test-Path $Path) {
        $confirmation = Read-Host "Are you sure you want to continue? [Y] Yes [N] No (default is No):"
        
        if ($confirmation -eq 'Y') {
            Microsoft.PowerShell.Management\Remove-Item -Path $Path -Force:$Force -Recurse:$Recurse
            Write-Host "Items removed."
        } else {
            Write-Host "Operation cancelled."
        }
    } else {
        Write-Host "Path does not exist."
    }
}

# Set environment variable for Neovim
$env:love = @"
**************************************************
*    Welcome to the Beautiful Text Decoration!   *
*            Have a great day! :)                *
**************************************************

C++, Leetcode, Chatgpt, Nvim, VsCode, Rick
"@

# Import Chocolatey profile for tab-completion support
#The purpose of this script is to enable tab completion for Chocolatey commands like 'choco install', 'choco upgrade, etc.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
    Import-Module "$ChocolateyProfile"
}
# ls reactor function to show all files including hidden ones
function ls-reactor {
    Get-ChildItem -Force
}

# Alias ls to use ls-reactor
Set-Alias ls ls-reactor

