oh-my-posh init pwsh --config 'C:\Users\<Username>\AppData\Local\Programs\oh-my-posh\themes\kali.omp.json' | Invoke-Expression
function unzip { param($file) tar -xf $file }
# example tar.exe -a -c -f out.zip in.txt
function zip {
	param(
			[string]$file1,
			[string]$file2
	     )
# Check if "--help" is entered as an argument
		if ($file1 -eq "--help") {
			Write-Output "zip output.zip input.txt or folder"
		} else {
# Run the tar command as per the original function definition
			tar -a -c -f $file1 $file2
		}
}


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
#enviroment variable for nvim
$env:love = "
**************************************************
*    Welcome to the Beautiful Text Decoration!   *
*            Have a great day! :)                *
**************************************************

     C++, Leetcode, Chatgpt, Nvim, VsCode, Rick
"