--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●           syntax                ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

local syntax = {}

syntax.lua = {
   --'User defined'
   user = {
      constant = {
         key = 'constant',
         exemples = {'1,2,3,4,5',}
      },
   }


--'fixed words'
 language = {
   fonction = {
      support = {
         key = 'support.function',
         exemples = { 'io.open', 'table.insert', 'string.len', 'string.find'}
      },
      os = {
         key = 'support.function',
         exemples = { 'io.open', 'table.insert', 'string.len', 'string.find'}
      },
   }
   keyword = {
      control = {
         key = 'keyword.control',
         exemples = [[
            local,function,
            repeat,until,while,
            for,in,
            if,then,else,elseif,do,
            break,return,end,
         ]]
      },
      operator ={
         arythmetic = {
            key = 'keyword.operator',
            exemples = [[
               +,-,
               *,/,
            ]]
         },
         reltionnal = [[
            ==,~=
             >,>=
             <,<=,
         ]]
         },
         logical = {
            key = 'keyword.operator',
            exemples = {
               'and',
               'or',
               'and',
               'not',
            }
         },
         booleans = {
            key = 'constant.language',
            exemples = {
               'true',
               'false',
               'nil',
            }
         }
      }
   }
}


-- dir.getdirectories
-- dir.getfiles
