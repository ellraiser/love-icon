-- example usage in a LÖVE project

-- require the module
require('love-icon')

love.load = function()

  -- make a directory in $SAVE_DIRECTORY for output
  love.filesystem.createDirectory('loveicon')

  -- load a png
  local icon, err = love.icon:newIcon('examples/love-hammer.png')

  -- create an ico file
  icon:convertToICO('loveicon/hammer.ico')

  -- create an icns file
  icon:convertToICNS('loveicon/hammer.icns')

  -- open the $SAVE_DIRECTORY to view output
  love.system.openURL('file://' .. love.filesystem.getSaveDirectory() .. '/loveicon')

  -- quit the 'game'
  love.event.quit(1)

end
