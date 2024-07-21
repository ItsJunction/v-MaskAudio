# <center>v-MaskAudio </center>

A simple, standalone resource that plays a sound when a player wears a specific mask.

Please note this resource requires your server to be running on the game build b2944 or above to ensure all masks work as intended.

## Features

- Configurable sounds (and options to add your own)
- Configurable keybinds, cooldowns and text
- Prompts the player if the equipped mask is supported
- Supports both [male](https://youtu.be/-2h1is1p_os) and [female](https://youtu.be/KGJcedVEk64) peds

## Installation

1. Download the latest release from the [releases page](https://github.com/ItsJunction/v-MaskAudio/releases)
2. Extract the zip into your resources folder
3. Configure the config.lua as needed
4. Add `ensure v-MaskAudio` (or `start v-MaskAudio`) to your server.cfg
5. Equip a mask and press `Caps Lock` (or any key you set) to play the sound.

## Support
If you need any extra help with this resource, feel free to join my [Discord](https://discord.gg/PCJxgmtgSk).

### The mask number I am using isn't working - what do I do?
You've most likely got the mask number through a clothing menu. Some clothing menus (if you're using one), may not show the correct mask number at all. To find the correct mask number, you can run the following code:
```lua
-- This will print the mask number you are currently wearing. You can then use this number in the config.lua.
print(GetPedDrawableVariation(PlayerPedId(), 1))
```

## License
This project is licensed for use under The Unlicense (moreso, do whatever you want with it).
