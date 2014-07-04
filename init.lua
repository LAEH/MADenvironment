#!/usr/bin/env th

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●           Environment           ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

require 'sys'
local schemes = require 'schemes'
local makeScheme = {}
makeScheme.string = {}
local scheme = schemes.one
local xml = {}

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●                           START ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

local xmlStart = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist
  PUBLIC '-//Apple Computer//DTD PLIST 1.0//EN'
  'http://www.apple.com/DTDs/PropertyList-1.0.dtd'>
<plist version="1.0">
   <dict>
      <key>name</key>
      <string>MAD</string>
      <key>settings</key>
      <array>
]]
local xmlEnd = [[
		</array>
      <key>uuid</key>
      <string>13E579BF-40AB-42E2-9EAB-0AD3EDD88532</string>
      <key>colorSpaceName</key>
      <string>sRGB</string>
      <key>semanticClass</key>
      <string>theme.mad</string>
      <key>author</key>
      <string>LA</string>
   </dict>
</plist>
]]

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

--●                                 ●
--●                         General ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

function generalSetting(keys)
	local keys = keys or scheme.general
	local strings = {}
	for _,scope in ipairs(scheme.general) do
		print('scope.name'..scope.name)
		local string = [[
			<key>]]..scope.name..[[</key>
			<string>]]..scope.color..[[</string>
		]]

		table.insert(strings,string)
	end
	return [[
		<dict>
			<key>settings</key>
			<dict>]]..table.concat(strings)..[[</dict>
		</dict>
	]]
end
local xmlGeneral = generalSetting()
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●                             LUA ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●


local xmlLua = {}
for _,scope in ipairs(scheme.lua) do
	print('scope.name'..scope.name)
	local scopeString = {}
	local string = [[<dict>
	<key>scope</key>
	<string>]]..scope.name..[[</string>
	<key>settings</key>
	<dict>
		<key>foreground</key>
		<string>]]..scope.color..[[</string>
	]]
	table.insert(scopeString,string)
	if scope.style then
		table.insert(scopeString,
			'<key>fontStyle</key><string>'..scope.style..'</string>'
		)
	end
	if scope.background then
		table.insert(scopeString,
			'<key>background</key><string>'..scope.background..'</string>')
	end
	table.insert(scopeString, '</dict></dict>')
	table.insert(xmlLua, table.concat(scopeString))
end
-- print(xmlLua)
xmlLua = table.concat(xmlLua)
-- print(xmlLua)

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●                             END ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●


local xmlDoc = xmlStart..xmlGeneral..xmlLua..xmlEnd
print(xmlDoc)

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●                              IO ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

local schemeDirectory = "/Users/LA/Library/Application Support/Sublime Text 3/Packages/MAD/"
local schemeName = 'theMADtheme'..os.time()..'.tmTheme'
local schemeFile = schemeDirectory..'/'..schemeName
local file = io.open(schemeFile,'w')
file:write(xmlDoc)
file:close()
