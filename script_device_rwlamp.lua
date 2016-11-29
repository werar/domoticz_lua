-- Script to turn on the lamp when door is opened

local doorName = 'Door'
local lampName = 'Lroom table switch'

commandArray = {}

if (devicechanged[doorName]=='Open') then
  print('Door is open')
  commandArray[lampName]='On'
elseif (devicechanged[doorName]=='Closed') then
  commandArray[lampName]='Off'
end
return commandArray
