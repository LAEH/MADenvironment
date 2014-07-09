local syntax = {}

--┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
--┃                                                                           ┃
--┃                                                                       LUA ┃
--┃                                                                           ┃
--┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

syntax.lua = {
   user = {
      constant = {
         key = 'constant',
         exemples = [[
            1
            2
            100(%)
         ]]
      },
   },
   language = {
      fonction = {
         support = {
            key = 'support.function',
            exemples = [[
               dir.getdirectories
               dir.getfiles
               io.open
               table.insert
               string.len
               string.find
            ]]
         },
         os = {
            key = 'support.function',
            exemples = [[
               os.execute
            ]]
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
                  +,
                  -,
                  *,
                  /,
               ]]
            },
            reltionnal = [[
               ==
               ~=
               >
               >=
               <
               <=
            ]]
            logical = {
               key = 'keyword.operator',
               exemples = [[
                  and
                  or
                  and
                  not
               ]]
            },
            booleans = {
               key = 'constant.language',
               exemples = [[
                  true
                  false
                  nil
               ]]
            }
         }
      }
   }
}

