# Loxley's Ashita Addons

## Overview
This repository is a collection of addons I wrote to support custom content and development for [LSB](https://github.com/LandSandBoat/server) based emulation servers.

If you found my addons helpful, please consider kindly supporting my other work and/or starring the repository. Thank you.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/loxleygames)

## customcolors
The `customcolors` addon allows custom content to generate text that appears in color, creating a more polished and retail accurate experience. The addon will recolor text whenever it matches a regex pattern found in `messages.lua`.

## pos
The `pos` addon is simple, every time you use the `/pos` command in game, it copies your character's current position into the clipboard, appropriately formatted for lua tables. It also includes a comment to easily return to that position. This saves a huge amount of time when developing custom content and placing objects in the world, as you can rapidly generate positions and paste them into your templates. This works great for placing objects in [LQS](https://github.com/LoxleyXI/LQS) and [LGS](https://github.com/LoxleyXI/LGS).

Example output: `{ 16.855, -6.000, -51.214, 95 }, -- !pos 16.855 -6.000 -51.214 50`

To use these tables in entity methods such as `setPos`, you can use the table `unpack` function.

Example: `player:setPos(unpack(tbl))`

(Special thanks to Noomi for inspiring this addon!)
