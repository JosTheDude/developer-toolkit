# Script: exports.ps1
# Description: Exports each directory using packwiz and saves the exports to ./exports/

$exportsDir = Join-Path (Get-Location) "exports"
$version = "1.4.0"

# Create the exports directory if it doesn't exist
if (-not (Test-Path -Path $exportsDir)) {
    try {
        New-Item -ItemType Directory -Path $exportsDir | Out-Null
    } catch {
        Write-Host "Failed to create $exportsDir"
        exit 1
    }
}

# Iterate over directories in the current folder
Get-ChildItem -Directory | Where-Object { $_.Name -ne "exports" } | ForEach-Object {
    $dirName = $_.Name
    $fullDirPath = $_.FullName
    $exportSubDir = Join-Path $exportsDir $dirName

    Write-Host "Processing directory: $dirName"

    try {
        # Create subdirectory for exports
        if (-not (Test-Path -Path $exportSubDir)) {
            New-Item -ItemType Directory -Path $exportSubDir | Out-Null
        }

        Push-Location $fullDirPath

        # CurseForge Export
        $curseforgeFile = Join-Path $exportSubDir "Dev-Toolkit-$dirName-$version.zip"
        & packwiz curseforge export -o $curseforgeFile

        # Modrinth Export
        $modrinthFile = Join-Path $exportSubDir "Dev-Toolkit-$dirName-$version.mrpack"
        & packwiz modrinth export -o $modrinthFile

        Pop-Location

        Write-Host "Exported $dirName successfully.`n"
    } catch {
        Write-Warning "Failed to process ${dirName}: $_"
        if ($null -ne (Get-Location -ErrorAction SilentlyContinue)) {
            Pop-Location
        }
    }
}

Write-Host "All exports completed successfully."
