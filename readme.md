# Minecraft Mod Script

Esse script em PowerShell automatomatiza a instação do fabric e dos mods utilizados no servidor (1.18.2) de subs da twittch do Vecettv.

## Como rodar

Cole este comando no Powershell:

![Abrir powershell](/img/abrir_powershell.gif)

```PowerShell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/EutruTepit/MinecraftModScript/main/run.ps1'))
```

Encurtado:

```PowerShell
iwr -useb https://raw.githubusercontent.com/EutruTepit/MinecraftModScript/main/run.ps1 | iex
```

## Como Funciona

O script verifica a existência de uma instalção do minecraft, caso não tenha irá direcionar uma instalação do Minecraft Launcher. Após a verificação, ou instalção, irá baixar o instalador do fabric, irá abrir uma janela com as configurações do fabric. Neste momento o verifique se a versão selecionada é a **1.18.2**, todos os mods que serão instalados posteriormente **só funcionarão nesta versão**, verifique o exemplo de como deve ficar na imagem abaixo.

![Exemplo](/img/exemplo.png)

Lista dos mods:

- fabric-api
- mod-menu
- simple-voice-chat
- optifabric / optifine

  Opcionais:

  - litematica
  - mini-hud
  - tweakeroo
