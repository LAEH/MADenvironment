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
