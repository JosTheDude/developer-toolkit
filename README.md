# Developer's Toolkit
A developer focused modpack with a collection of useful utilities and game optimizations.

[<img src="https://cdn.jsdelivr.net/npm/@intergrav/devins-badges@3/assets/cozy/available/modrinth_vector.svg">](https://modrinth.com/modpack/developer-toolkit)
[<img src="https://cdn.jsdelivr.net/npm/@intergrav/devins-badges@3/assets/cozy/available/github_vector.svg">](https://github.com/JosTheDude/developer-toolkit/)

This modpack is primarily built for **plugin** and **server** developers in mind. It contains a large variety of server-development utilities that are combined to become a cause the following reactions:
- "Oh, was that not just vanilla? My modpack does that for me!"
- "This is so annoyi- oh wait my modpack has a tool for that!"
- "I literally cannot live without this"
- Among other experiences, depending on use-case and usage.

Built to work **out of the box** with most settings pre-configured. Feel free to modify as needed. See the mod list for full list of functionality, alongside feature list below.

This modpack is based off of [Fabulously Optimized](https://download.fo), an extremely popular modpack for base gameplay optimization.

## List of Features
- Connect to Servers Regardless of Version (1.7 to latest, bedrock, and more!) via ViaFabricPlus. No more switching versions!
- Better Command Suggestions (Commands Suggestions are more loose, easier to access commands)
- Easy to access to Minecraft-compatible fonts and symbols (Small Caps, Unicode symbols, etc.)
- Item, Entity, etc. NBT & Component Viewers (Component Viewers, NBT Viewers, etc.)
- NBT Autocomplete for Relevant Commands
- Improved Middle Clicking (copy entity data, block data, everything you need via middle clicking!)
- Improved Inventory Searching (Persistent Inventory Searching, Enable Operator Tab, Better Saved Hotbars to store items, and more!)
- Improved Command Selections (UUID entity filtering, easy near checks)
- Teleport Utilities (through commands, top commands, centering, all client-side)
- **Extremely** customizable chat, with tabs, filters, highlights, mentions, and more
- Shulker, Chest, and Block Peek within Inventories
- Resource & Shader Pack Store In-Game (via Resourcify)
- Freelook & Freecam (OP / Creative Only)
- Scrollable Tooltips
- Command Block IDE (for easy command block editing)
- Dynamic App Icon (easily view which open client is connected to what!)
- Toggleable Fullbright
- See Through Lava
- Extremely Increased Chat History
- Server Unblocker (bypass Mojang-blocked servers)
- Basic Info Display
- Better Nametags (Customize and make nametags however you want them!)
- Better Statistics (Advanced Statistics Menu)
- Enhanced Mount HUD
- Rebind _everything_, from narrator to the F3 menu
- Searchable Controls Menu
- Improved Sounds (Fully Redone in-game sounds)
- And so much more... view the mod menu in-game for a full list

## Performance Recommendations
Developer's Toolkit is built with performance in mind, however, it does contain a lot of mods and changes. The modpack is based off of Fabulously Optimized, one of the most popular modpacks for performance tuning. However, due to the sheer library of additional components and features presented in the pack it is recommended to follow the following performance recommendations.
- Recommended Allocation
> * 8GB of RAM (Client)
> * [Aikar's Flags Java Arguments (Client)](https://github.com/JosTheDude/developer-toolkit?tab=readme-ov-file#aikars-flags-arguments)
- Minimum Allocation
> * 4GB OF RAM (Client)

### Aikar's Flags Arguments
```java
-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true
```

## Contribution & Mod Suggestions
Thank you for considering suggesting mods or contributing! Take a look at the [Contribution Guidelines](https://github.com/JosTheDude/developer-toolkit/blob/main/CONTRIBUTING.md) for additional information.

## Disclaimers
- This modpack may result in punishment on certain networks if not configured properly. It contains the following high-risk mods:
> * [**Tweakaroo**](https://modrinth.com/mod/tweakeroo), extremely punishable & considered a cheat with certain settings
> * [**ViaFabricPlus**](https://modrinth.com/mod/viafabricplus), can cause packet issues on some networks
> * **Freecam**, considered a cheat, client-side only
> * **Freelook**, considered a cheat on certain networks
- Only the **latest version** of this modpack is supported. If a modpack version for 1.12.2 is out, previous versions for 1.8, 1.10, and 1.11 are all unsupported.
- Community Involvement within this Pack's Communities is bound by the project's [Code of Conduct](https://github.com/JosTheDude/developer-toolkit/blob/main/CODE_OF_CONDUCT.md)
- All [Fabulously Optimized Disclaimers](https://wiki.download.fo/disclaimers) apply to this modpack
