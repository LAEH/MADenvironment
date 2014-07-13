local syntax = {}

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
            key = 'support.function', -- package system
            exemples = [[
               dir.getdirectories
               dir.getfiles
               pathe.basename
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




-- ipairs
-- load
-- loadfile
-- loadstring
-- module
-- next
-- pairs
-- pcall
-- print
-- rawequal
-- rawget
-- rawset
-- require
-- select
-- setfenv
-- setmetatable
-- tonumber
-- tostring
-- type
-- unpack
-- xpcall



-- io.flush
-- io.open
-- io.write
-- io.lines

-- file:close
-- file:flush
-- file:lines
-- file:read
-- file:seek
-- file:setvbuf
-- file:write



-- math.abs
-- math.acos
-- math.asin
-- math.atan
-- math.atan2
-- math.ceil
-- math.cos
-- math.cosh
-- math.sin
-- math.sinh
-- math.sqrt
-- math.tan
-- math.tanh

-- math.deg
-- math.exp
-- math.floor
-- math.fmod -- floating modulo  math.fmod(2.33,2)
-- math.frexp
-- math.huge --
-- math.ldexp
-- math.log
-- math.log10
-- math.max
-- math.min
-- math.modf
-- math.pi
-- math.pow(10,2) -- 100 == 10 ^ 2
-- math.rad -- Convert degreee to radient


-- file:close
-- file:flush
-- file:lines
-- file:read
-- file:seek
-- file:setvbuf
-- file:write
-- io.close
-- io.flush
-- io.input
-- io.lines
-- io.open
-- io.output
-- io.popen
-- io.read
-- io.stderr
-- io.stdin
-- io.stdout
-- io.tmpfile
-- io.type
-- io.write

-- fo k,v in ipairs()
-- pirs pour quand table mix
-- a() -
-- os.clock
-- os.date
-- os.difftime
-- os.execute
-- os.exit
-- os.getenv
-- os.remove
-- os.rename
-- os.time
-- require 'async'.hrtime
-- t - require 'async'.hrtime
-- t()
