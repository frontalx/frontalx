$UsuarioNombre = "AlumnoSalah"

New-LocalUser -Name $UsuarioNombre -Password (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -FullName $UsuarioNombre

New-LocalGroup -Name "Estudiantes" -Description "Grupo de estudiantes creado con PowerShell"

Add-LocalGroupMember -Group "Estudiantes" -Member $UsuarioNombre

Get-LocalUser -Name $UsuarioNombre
Get-LocalGroupMember -Group "Estudiantes"
