#!/usr/bin/env th

require 'sys'
local scheme = require './schemes'
local col = require 'async.repl'.colorize

local r = 1

--┏━━━━━━━━━━━━━━┓
--┃                          ┃
--┃                   SCOPES ┃
--┃                          ┃
--┗━━━━━━━━━━━━━━┛

function generalSetting()
   local scopes = {}
   for _,scope in ipairs(scheme.general) do
      table.insert(scopes,
         [[<key>]]..scope.selector..[[</key>
         <string>]]..scope.color..[[</string>
      ]])
   end
   return table.concat(scopes)
end

function languageSpecific()
   local scopes = {}
   for _,scope in ipairs(scheme.language.lua) do
      local name, selector, color = scope.name, scope.selector,scope.color
      local style, background = ' ', ' '
      if scope.style then style = scope.style end
      if scope.background then background = scope.background end
      local scopeStrings = {}
      table.insert(scopeStrings,
         [[ <dict>
               <key>name</key>
               <string>]]..name..[[</string>
               <key>scope</key>
               <string>]]..selector..[[</string>
               <key>settings</key>
                  <dict>
                     <key>foreground</key>
                     <string>]]..color..[[</string>
                     <key>fontStyle</key>
                     <string>]]..style..[[</string>
                     <key>background</key>
                     <string>]]..background..[[</string>
               </dict>
            </dict>
         ]]
      )
      table.insert(scopes, table.concat(scopeStrings))
   end
   return table.concat(scopes)
end

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
            <dict>
               <key>settings</key>
               <dict>
                  ]]..generalSetting()
                  ..[[
               </dict>
            </dict>
         ]]
            ..languageSpecific()
            ..[[
         </array>
         <key>uuid</key>
         <string>13E579BF-40AB-42E2-9EAB-0AD3EDD88532</string>
         <key>colorSpaceName</key>
         <string>sRGB</string>
         <key>semanticClass</key>
         <string>theme.mad</string>
         <key>author</key>
         <string>MADenvironment</string>
      </dict>
   </plist>
]]
print(col.blue(xmlDoc)

local schemeDirectory = "/Users/LA/Library/Application Support/Sublime Text 3/Packages/MAD/"
local schemeName = 'MAD13.tmTheme'
local schemeFile = schemeDirectory..'/'..schemeName
local file = io.open(schemeFile,'w')
file:write(xmlDoc)
file:close()
