$nombreTarea = "TareaProgramada"

$fechaEjecucion = "03/05/2025"
$horaEjecucion = "10:00"

$comando = @"
schtasks /create /tn $nombreTarea /tr `"cmd /c echo Esta es una tarea programada && pause`" /sc once /sd $fechaEjecucion /st $horaEjecucion
"@

Invoke-Expression $comando

$comandoEliminar = "schtasks /delete /tn $nombreTarea /f"

Write-Output "La tarea ha sido creada y programada. Para eliminarla, ejecuta el siguiente comando:"
Write-Output $comandoEliminar
