# löve-icon  
Zero-dependency icon convertor to turn `.png` into `.ico` and `.icns` files for [LÖVE](https://github.com/love2d/love).

> This module is built to work with versions `11.X` and `12.X`

---

## Usage
Simply require the module in your game, some usage examples are shown below. You can also run the `main.lua` file with LÖVE to see some basic examples in action.

As this module uses the LÖVE filesystem, your file paths should be relative to [save directory](https://love2d.org/wiki/love.filesystem.getSaveDirectory) or your project path as they are passed directly to `love.filesystem.x`.

```lua
-- load the module
require('love-icon')

-- load a given png
local icon = love.icon:newIcon('examples/love-hammer.png')

-- create an ico file
local success, err = icon:convertToICO('loveicon/hammer.ico')

-- create an icns file
local success, err = icon:convertToICNS('loveicon/hammer.icns')
```

---

## Notes
For best results the PNG you use should be at least 256px x 256px. Anything smaller may result in blurry results when shown at higher resolutions.
