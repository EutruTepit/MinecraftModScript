# Verificar se o minecraft está instalado
echo "Verificando se ja tem do Minecraft na maquina"
if ( -not (WMIC product get name | findstr /R "Minecraft") ){
    echo "Baixando Minecraft launcher"
    $destino = "$env:TEMP\MinecraftInstaller.exe" # Destino para a pasta temporaria do sistema
    wget  "https://launcher.mojang.com/download/MinecraftInstaller.exe" -OutFile $destino

    # Executando o Instalador do minecraft na pasta temporaria do sistema
    powershell.exe $env:TEMP\MinecraftInstaller.exe
    $p = Get-Process MinecraftInstaller
    Wait-Process -Id $p.id
    Wait-Process -InputObject $p
}

