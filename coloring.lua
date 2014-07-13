#!/usr/bin/env th

require 'sys'
local scheme = require './schemes'
local col = require 'async.repl'.colorize
local coloring = {}

function coloring.general()
   local scopes = {}
   for _,scope in ipairs(scheme.general) do
      table.insert(scopes,
         [[<key>]]..scope.selector..[[</key>
         <string>]]..scope.color..[[</string>
      ]])
   end
   return table.concat(scopes)
end

local languages = {'lua','css','markdown'}
function coloring.languages()
   local allScopesStrings = {}
   -- print(scheme.language)
   for _,lang in ipairs(languages) do
      local syntaxTheme = scheme.language[lang]
      local langScopesStrings = {}
      for _,scope in ipairs(syntaxTheme) do
         print(scope.color)
         local scopeStrings = {}
         local name = scope.name
         local color = scope.color
         local selector = scope.selector
         local style, back = ' ', ' '
         if scope.style then style = scope.style end
         if scope.back  then back = scope.back end
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
                        <string>]]..back..[[</string>
                  </dict>
               </dict>
            ]]
         )
         table.insert(langScopesStrings, table.concat(scopeStrings))
      end
      table.insert(allScopesStrings, table.concat(langScopesStrings))
   end
   return table.concat(allScopesStrings)
end
coloring.languages()
function coloring.xmlMake()
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
                     ]]..coloring.general()
                     ..[[
                  </dict>
               </dict>
            ]]
               ..coloring.languages()
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
   print(col.blue(xmlDoc))
   local schemeDirectory = os.getenv('HOME')..'/Library/Application Support/Sublime Text 3/Packages/MAD/'
   local schemeName = 'MAD01.tmTheme'
   local sublimeFile = schemeDirectory..'/'..schemeName
   -- Sublime Package Version
   local file = io.open(sublimeFile,'w')
   file:write(xmlDoc)
   file:close()
   -- Repo Version
   local fileRepo = io.open(schemeName,'w')
   fileRepo:write(xmlDoc)
   fileRepo:close()
end
coloring.xmlMake()
