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

O script verifica a existência de uma instalção do minecraft, caso não tenha irá direcionar uma instalação do Minecraft Launcher. Após a verificação, ou instalção, irá baixar e executar o instalador do fabric instalando a versão 1.18.2.

Lista dos mods:

- fabric-api
- mod-menu
- simple-voice-chat
- optifabric / optifine

  Opcionais:

  - litematica
  - mini-hud
  - tweakeroo
  - Inventory-Profiles-Next

Lista de resourcepacks ([Vanilla Tweaks](https://vanillatweaks.net/picker/resource-packs/)):

- Utilidades (<https://vanillatweaks.net/share#fDipAq>):

  - FullAgeCropMarker
  - HungerPreview
  - StickyPistonSides
  - FullAgeAmethystMarker
  - DirectionalHoppers
  - DirectionalDispensersDroppers
  - BetterObservers
  - RedstonePowerLevels
  - BrewingGuide
  - VisualComposterStages
  - VisualCauldronStages
  - VisualHoney
  - GroovyLevers
  - ClearBannerPatterns

- Estético (<https://vanillatweaks.net/share#ObWaXv>):

  - UniqueDyes
  - RedIronGolemFlowers
  - DifferentStems
  - VariatedDirt
  - VariatedBricks
  - VariatedCobblestone

- Qualidade de vida (<https://vanillatweaks.net/share#7Qumix>):

  - PingColorIndicator
  - SmootherFont
  - CatFix
  - ItemHoldFix
  - SoulSoilSoulCampfire
  - UnobtrusiveScaffolding
  - InvisibleTotem

- Silencio (<https://vanillatweaks.net/share#U26vvU>):

  - QuieterVillagers
  - QuieterPistons
  - QuieterCows
  - QuieterNetherPortals
  - QuieterMinecarts
  - QuieterDispensersDroppers
  - QuieterWate
