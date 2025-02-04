$Escritorio = [Environment]::GetFolderPath("Desktop")
$Archivo = "$Escritorio\ProcesosActivos.txt"
Get-Process | Out-File -FilePath $Archivo
Write-Output "La lista de procesos en ejecución se ha guardado en $Archivo"

$NombreProceso = Read-Host "Introduce el nombre del proceso que deseas detener"

try {
    Stop-Process -Name $NombreProceso -Force -ErrorAction Stop
    Write-Output "El proceso $NombreProceso ha sido detenido."
} catch {
    Write-Output "No se pudo detener el proceso $NombreProceso. Es posible que no exista o que no tengas permisos para detenerlo."
}
