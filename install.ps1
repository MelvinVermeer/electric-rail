$modName = "electric-rail"
$version = "0.0.1"

$factorioModsFolder = "$env:USERPROFILE\AppData\Roaming\Factorio\mods"

# First remove the exting version
Remove-Item "$factorioModsFolder\$modname-$version\" -Recurse -ErrorAction SilentlyContinue

Copy-Item -Path ./src -Destination "$factorioModsFolder\$modname-$version" -Recurse -Force

