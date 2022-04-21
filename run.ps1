# Verificar se o minecraft está instalado
echo "Verificando se ja tem do Minecraft na maquina"
if ( -not (WMIC product get name | findstr /R "Minecraft") ){
    echo "Baixando Minecraft launcher"
    $destino = "$env:TEMP\MinecraftInstaller.exe" # Destino para a pasta temporaria do sistema
    wget "https://launcher.mojang.com/download/MinecraftInstaller.exe" -OutFile $destino

    # Executando o Instalador do minecraft na pasta temporaria do sistema
    Start-Process -Wait -FilePath $destino
}

echo "Abrindo o minecraft por 15s. Gerando arquivos base."
$p = Start-Process -FilePath "C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe" -PassThru
Start-Sleep -s 10
Stop-Process -InputObject $p

echo "Instalacao do fabric"
$fabric_destino = "$env:TEMP\fabric-installer.exe" # Destino para a pasta temporaria do sistema
wget "https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.10.2/fabric-installer-0.10.2.exe" -OutFile $fabric_destino

Start-Process -Wait -FilePath $fabric_destino

# Instalaçao dos mods basicos
$mods_destino = "$env:APPDATA\.minecraft\mods"

if ( -not (Test-Path $mods_destino) ){
    mkdir $mods_destino # Garantir que existe a pasta minecraft e mods no appdata
}

# MODO BUTRO (FEIO Q DOI)
# Todo: Usar a propria api do curse forge

echo "Instalando fabric-api"
wget "https://media.forgecdn.net/files/3759/491/fabric-api-0.51.1%2B1.18.2.jar" -OutFile "$mods_destino\fabric-api-0.51.1+1.18.2.jar"

echo "Instalando malilib"
wget "https://media.forgecdn.net/files/3692/220/malilib-fabric-1.18.2-0.12.1.jar" -OutFile "$mods_destino\malilib-fabric-1.18.2-0.12.1.jar"

echo "Instalando ModMenu"
wget "https://media.forgecdn.net/files/3745/497/modmenu-3.1.1.jar" -OutFile "$mods_destino\modmenu-3.1.1.jar"

echo "Instalando o VoiceChat"
wget "https://media.forgecdn.net/files/3732/702/voicechat-fabric-1.18.2-2.2.32.jar" -OutFile "$mods_destino\voicechat-fabric-1.18.2-2.2.32.jar"

echo "Instalando o Optifine"
wget "https://media.forgecdn.net/files/3717/575/optifabric-1.13.0.jar" -OutFile "$mods_destino\optifabric-1.13.0.jar"
wget "https://optifine.net/downloadx?f=OptiFine_1.18.2_HD_U_H7.jar&x=b8e23266b4500fad461f6860ec3c0c04" -OutFile "$mods_destino\OptiFine_1.18.2_HD_U_H7.jar"


$input = Read-Host "Deseja instalar os mods opcionais? [S] Sim - [N] Nao (Padrao)"
$input = $input.ToLower()

if ( ($input -match "s" ) -or ($input -match "sim") ){
    echo "Instalando o Litematica"
    wget "https://media.forgecdn.net/files/3751/645/litematica-fabric-1.18.2-0.11.2.jar" -OutFile "$mods_destino\litematica-fabric-1.18.2-0.11.2.jar"

    echo "Instalando o Mini-Hud"
    wget "https://media.forgecdn.net/files/3671/392/minihud-fabric-1.18.2-0.22.0.jar" -OutFile "$mods_destino\minihud-fabric-1.18.2-0.22.0.jar"

    echo "Instalando o Tweakeroo"
    wget "https://media.forgecdn.net/files/3672/640/tweakeroo-fabric-1.18.2-0.13.1.jar" -OutFile "$mods_destino\tweakeroo-fabric-1.18.2-0.13.1.jar"

}


echo "Instalacoes concluidas"

Start-Process -FilePath "C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe"