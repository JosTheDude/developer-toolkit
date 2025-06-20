# Get the directory of the current script
$currentScriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Construct the path to the target script
$targetScript = Join-Path -Path $currentScriptDir -ChildPath "..\Scripts\exports.ps1"

# Run the target script
& $targetScript
