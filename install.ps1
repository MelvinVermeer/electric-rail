$modName = "electric-rail"
$version = "0.0.1"

$modFolder = "$env:USERPROFILE\AppData\Roaming\Factorio\mods\$modname" + "_" + "$version"

# First remove the exting version
Remove-Item $modFolder -Recurse -ErrorAction SilentlyContinue

# Copy everthing in the src directory to Factorio's mods folder
Copy-Item -Path ./src -Destination $modFolder -Recurse -Force
