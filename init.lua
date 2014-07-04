#!/usr/bin/env th

require 'sys'
local schemes = require 'schemes'
local scheme = schemes.one

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--=============================================================================
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

--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--=============================================================================
function languageSpecific()
	local scopes = {}
	for _,scope in ipairs(scheme.lua) do
		local scopeString = {}
		table.insert(scopeString, [[
			<dict><key>scope</key>
			<string>]]..scope.name..[[</string>
			<key>settings</key>
				<dict>
					<key>foreground</key>
					<string>]]..scope.color..[[</string>
		]])
		if scope.style then
			table.insert(scopeString,[[<key>fontStyle</key>
				<string>]]..scope.style..[[</string>]]
			)
		end
		if scope.background then
			table.insert(scopeString, [[<key>background</key>
				<string>]]..scope.background..[[</string>]]
			)
		end
		table.insert(scopeString, '</dict></dict>')
		table.insert(scopes, table.concat(scopeString))
	end
	return table.concat(scopes)
end


--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--=============================================================================

local xmlDoc = [[
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
		]]..generalSetting()..languageSpecific()..[[
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
local schemeDirectory = "/Users/LA/Library/Application Support/Sublime Text 3/Packages/MAD/"
local schemeName = 'theMADtheme'..os.time()..'.tmTheme'
local schemeFile = schemeDirectory..'/'..schemeName
local file = io.open(schemeFile,'w')
file:write(xmlDoc)
file:close()
