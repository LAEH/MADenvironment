#!/usr/bin/env th

local schemes = {}
local language_Punctuation =  'punctuation.definition.string, punctuation.definition.variable, punctuation.definition.string, punctuation.definition.parameters, punctuation.definition.string, punctuation.definition.array'

local base03 = '#002b36'
local white = '#ffffff'
local base02 = '#073642'
local base01 = '#586e75'
local base00 = '#657b83'
local base0 = '#839496'
local base1 = '#93a1a1'
local base2 = '#eee8d5'
local base3 = '#fdf6e3'

local yellow   = '#b58900'
local orange   = '#cb4b16'
local red      = '#dc322f'
local pink     = '#d33682'
local violet   = '#6c71c4'
local blue     = '#268bd2'
local cyan     = '#2aa198'
local green    = '#859900'

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
      {name='lineHighlight',                   color='#2a3f45'},
      {name='gutterForeground',                color='#2a3f45'},
      {name='foreground',                      color='#677E82'},
      {name='selection',                       color='#597175'},
      {name='selectionBorder',                 color='#2a3f45'},
      {name='selectionForeground',             color='#2a3f45'},
      {name='caret',                           color='#839496'},
      {name='brackets',                        color='#839496'},
      {name='guide',                           color='#2a3f45'},
      {name='activeGuide',                     color='#3e757f'},

      {name='inactiveSelection',               color='#839496'},
      {name='inactiveSelectionForeground',     color='#839496'},
      {name='findHighlight',                   color= pink},
      {name='findHighlightForeground',         color= white},
   },
   lua = {
      { name= 'comment',                        color='#0F2329'},-- '--●●●●',
      { name= 'constant',                       color='#994155'},-- '2,3,4',
      { name= 'keyword.operator',               color='#000024'},-- '==, =, >',
      { name= 'keyword.control',                color='#0F2329'},-- 'functionreturn,in, do',
      { name= 'constant.language',              color='#815548'},-- 'true, false',
      { name= 'support.function',               color='#ffffff'},-- 'io.open, table.insert',
      { name= 'variable',                       color='#147B8A'},-- 'x, color1',
      { name= 'entity.name.function',           color='#268bd2'},-- 'fun.grid(opt)',
      { name= 'variable.parameter',             color='#045EAB'},-- 'function, local, in, do',
      { name= 'string',                         color='#26a497'},--background='#2a3f45'},-- 'strings, key quotes',
      { name= 'comment.block',                  color='#00AC6C'},
      { name= 'punctuation',                    color='#0000000'},-- 'strings, key strings, quotes',
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


return schemes


-- More general scope-- {name = 'keyword',                   prettyName = 'Language Keywords',       exemple ='function, local, in, do',   color=o(090,7,090)},
-- {name = 'variable.language',         prettyName = 'lua.constants',           exemple ='function, local, in, do',               color=o(180,9,100)},
-- {name = 'storage',                   prettyName = 'lua.operator.bolean',     exemple ='true, false',               color=o(240,6,100)},
-- {name = 'support.variable',          prettyName = 'user.fucntion options',   exemple ='opt',               color=o(350,7,040)},
