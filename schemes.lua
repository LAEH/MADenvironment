#!/usr/bin/env th

local schemes = {}
local language_Punctuation =  'punctuation.definition.string, punctuation.definition.variable, punctuation.definition.string, punctuation.definition.parameters, punctuation.definition.string, punctuation.definition.array'

--●●●●●●●●●●●●●●●
--●             ●
--●             ●
--●             ●
--●             ●
--●             ●
--●             ●
--●●●●●●●●●●●●●●●
schemes.one = {
   general = {
      {name='invisibles',                      color='#223439'},
      {name='background',                      color='#354B50'},
      {name='gutterForeground',                color='#677E82'},
      {name='foreground',                      color='#677E82'},
      {name='caret',                           color='#839496'},
      {name='brackets',                        color='#839496'},
      {name='guide',                           color='#839496'},
      {name='activeGuide',                     color='#839496'},
      {name='selection',                       color='#839496'},
      {name='selectionBorder',                 color='#839496'},
      {name='selectionForeground',             color='#839496'},
      {name='inactiveSelection',               color='#839496'},
      {name='inactiveSelectionForeground',     color='#839496'},
      {name='lineHighlight',                   color='#354C4F'},
      {name='findHighlight',                   color='#354C4F'},
      {name='findHighlightForeground',         color='#002024'},
   },
   lua = {
      {name = 'comment',                        color='#0F2329'},--  '--●●●●',
      {name = 'constant',                       color='#994155'},-- '2,3,4',
      {name = 'keyword.operator',               color='#000024'},-- '==, =, >',
      {name = 'keyword.control',                color='#85bb00'},-- 'functionreturn,in, do',
      {name = 'constant.language',              color='#815548'},-- 'true, false',
      {name = 'support.function',               color='#ffffff'},-- 'io.open, table.insert',
      {name = 'variable',                       color='#147B8A'},-- 'x, color1',
      {name = 'entity.name.function',           color='#fc625b'},-- 'fun.grid(opt)',
      {name = 'variable.parameter',             color='#045EAB'},-- 'function, local, in, do',
      -- {name = 'text source',                    color='#1bb188'},--
      {name = 'string',                         color='#00AC6C',background='#1D3034'},-- 'strings, key quotes',
      {name = 'comment.block',                   color='#00AC6C'},
      {name = language_Punctuation,             color='#0000000'},-- 'strings, key strings, quotes',
   },
   markdown = {
      {
         prettyName = 'Markdown punctuation',
         name = 'markup.list, text.html.markdown punctuation.definition, meta.separator.markdown',
         color = '#CB4b16'
      },
      {
         prettyName = 'Markdown heading',
         name = 'markup.heading',
         color = '#268BD2',
      },
      {
         prettyName = 'Markdown text inside some block element',
         name = 'markup.quote, meta.paragraph.list',
         color = '#2AA198',
      },
      {
         prettyName = 'Markdown em',
         name = 'markup.italic',
         style = 'italic',
      },
      {
         prettyName = 'Markdown strong',
         name = 'markup.bold',
         style = 'bold',
      },
      {
         prettyName = 'Markdown reference',
         name = 'markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdowdefinition.constant, meta.link.reference.markdown constant.other.reference',
         style = '#B58900',
      },
      {
         prettyName = 'Markdown linebreak',
         name = 'meta.paragraph.markdown meta.dummy.line-break',
         color = '#6C71c4',
      }
   }
}


--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
--●                                 ●
--●           Environment           ●
--●                                 ●
--●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

local syntax = {
   language = {
      fonction = {
         'io.open',
         'table.insert',
         'string.len',
         'string.find'

      },
      keyword = {
         control = {
            'local',
            'do',
            'if',
            'then',
            'else',
            'elseif',
            'end',
            'for',
            'function',
            'in',
            'repeat',
            'return',
            'until',
            'while',
            'break',
         },
         operator ={
            logical = {
               'and',
               'or',
               'and',
               'not',
            },
            arythmetic = {
               '+',
               '-',
               '*',
               '/',
               '-',
            },
            reltionnal ={
               '<',
               '>',
               '<=',
               '>=',
               '==',
               '~=',
            },
            booleans = {
               'true',
               'false',
               'nil',
            }
         }
      }
   }
}
return schemes


-- More general scope-- {name = 'keyword',                   prettyName = 'Language Keywords',       exemple ='function, local, in, do',   color=o(090,7,090)},
-- {name = 'variable.language',         prettyName = 'lua.constants',           exemple ='function, local, in, do',               color=o(180,9,100)},
-- {name = 'storage',                   prettyName = 'lua.operator.bolean',     exemple ='true, false',               color=o(240,6,100)},
-- {name = 'support.variable',          prettyName = 'user.fucntion options',   exemple ='opt',               color=o(350,7,040)},
