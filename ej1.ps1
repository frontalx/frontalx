$nombre = "Salah"

$rutaPrincipal = "C:\Proyectos$nombre"


if (-Not (Test-Path -Path $rutaPrincipal)) {
    New-Item -ItemType Directory -Path $rutaPrincipal
}

$subFolders = @("Documentos", "Imágenes")

foreach ($subFolder in $subFolders) {
    $rutaSubFolder = Join-Path -Path $rutaPrincipal -ChildPath $subFolder
    if (-Not (Test-Path -Path $rutaSubFolder)) {
        New-Item -ItemType Directory -Path $rutaSubFolder
    }
}

$archivoTexto = Join-Path -Path $rutaDocumentos -ChildPath "Lista$nombre.txt"
if (-Not (Test-Path -Path $archivoTexto)) {
    New-Item -ItemType File -Path $archivoTexto
    Add-Content -Path $archivoTexto -Value "Planificación inicial del proyecto"
}

Write-Output "Carpetas y archivo creados exitosamente."

