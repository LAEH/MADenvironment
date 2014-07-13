#!/usr/bin/env th

-- COLORS
local base         = '#eeeeee'
local violet       = { front='#530ff5', back ='#e3f9fd'}
local cyan         = { front='#2cbae7', back ='#cbebf5'}
local green        = { front='#65b11a', back ='#f0f7ee'}
local pink         = { front='#fe2973', back ='#fcf1f4'}
local orange       = { front='#ffa502', back ='#fff6e6'}
local red          = { front='#ff5533', back ='#ffeeeb'}
local yellow       = { front='#ffd201', back ='#fffbe6'}
local grey         = { front='#9fa0a4', back ='#f6f6f6'}
local black        = { front='#9fa0a4', back ='#f6f6f6'}
local lightblue    = { front='#65d0fc', back ='#f0fbff'}
local blue         = { front='#2f87fb', back ='#eaf3ff'}

scheme = {
   general = {},
   language = {},
}

scheme.general = {
   { selector = 'background',        color =  base},
   { selector = 'invisibles',        color = '#E0E0E0'},
   { selector = 'lineHighlight',     color = '#ffffff'},
   { selector = 'gutterForeground',  color = '#bbbbbb'},
   { selector = 'foreground',        color = '#222222'},
   { selector = 'selection',         color = '#ffffff'},
   { selector = 'selectionBorder',   color = '#000000'},
   { selector = 'caret',             color = '#000000'},
   { selector = 'brackets',          color = '#839496'},
   { selector = 'guide',             color = '#dddddd'},
   { selector = 'activeGuide',       color = '#ffffff'},
   { selector = 'inactiveSelection', color = '#61E880'},
   { selector = 'findHighlight',     color = '#FFE792'},
}

scheme.language.lua = {

   --QUOTES
   {
      selector = 'string.quoted.single',
      name = 'LUA block string', -- [[string]]
      color = pink.front,
      back = pink.back,
      style='bold italic',
   },
   {
      selector = 'string.quoted.double',
      name = 'LUA string',
      color ='#000000',
      back = base,
      style ='bold italic',
   },
   {
      selector= 'constant.character, string',
      name = 'LUA block quote',
      color = green.front,
      style = 'bold',
   },

   --COMMENTS
   {
      name = 'LUA comment',
      color = '#000',
      style='bold italic',
      selector = 'comment, comment punctuation',
   },
   {
      name = 'LUA comments block',
      color = pink.front,
      style='bold italic',
      selector = 'comment.block',
   },

   --KEYWORDS & CONSTANTS
   {
      name  = 'LUA support functions',-- 'io. table. os. math. .file'
      style = 'italic',
      color = blue.front,
      selector = 'support.function',
   },
   {
      name = 'LUA controls keyword', -- 'local' 'function' 'for' 'if'
      back = orange.back,
      color = orange.front,
      style = 'bold',
      selector = 'keyword.control',
   },
   {
      name = 'LUA arythmetic signs',--'==, =, >'
      back = violet.back,
      color = violet.front,
      selector  = 'keyword.operator',
   },
   {
      name = 'LUA constants',--'true, false'
      color = red.front,
      style = 'bold',
      selector = 'constant.language',
   },

   --USER
   {
      name = 'LUA user function name',-- 'MADweb.' 'MAD '
      style = 'italic bold',
      color = violet.front,
      selector = 'entity.name.function',
   },
   {
   {
      name = 'LUA user function arguments',--'opt'
      color = green.front,
      back = green.back,
      selector  = 'variable.parameter',
   },
      name = 'LUA numbers',--'2,3,4'
      color = '#000000',
      style = 'bold',
      color = red.front,
      selector = 'constant',
   },
   {
      name= 'LUA user variables',--'x, color1'
      color='#147B8A',
      selector = 'variable',
   },
   {
      name = 'LUA user strings',--strings, key strings, quotes'
      style='bold',
      color = '#000',
      selector= 'punctuation',
   }
}

scheme.language.css = {
   {
      selector = 'entity.name.tag.css',
      name = 'CSS Selector - Tag',
      back = pink.back,
      color = pink.front,
      style = 'bold',
   },
   {
      selector = 'source.css entity.other.attribute-name.id',
      name = 'CSS Selector - Id',
      back = pink.back,
      color = pink.front,
      style = 'bold',
   },
   {
      selector = 'entity.other.attribute-name.class',
      name = 'CSS Selector - Class',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'entity.other.attribute-name.pseudo-element, entity.other',
      name = 'CSS Pseudo Class,attribute-name.pseudo-class',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'support.type.property-name',
      name = 'CSS Property Name',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'support.constant.property-value',
      name = 'CSS Property Value',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'constant.other.color.rgb-value',
      name = 'CSS Color',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'keyword.other.unit.css',
      name = 'CSS Unit',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'support.constant.font-name',
      name = 'CSS Font Name',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'punctuation.section.property-list.css',
      name = 'CSS Curly Brackets',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'punctuation.section.function.css',
      name = 'CSS Round Brackets',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'support.function.misc.css',
      name = 'CSS url() / rgba() / hsla',
      back = pink.back,
      color = pink.front,
   },
   {
      selector = 'variable.parameter.misc.css',
      name = 'CSS Parameter',
      back = pink.back,
      color = pink.front,
   }
}

scheme.language.markdown = {
   {
      name = 'Markdown punctuation',
      selector = 'markup.list, text.html.markdown punctuation.definition, meta.separator.markdown',
      back = pink.back,
      color = pink.front,
   },
   {
      name = 'Markdown heading',
      selector = 'markup.heading',
      back = blue.back,
      color = blue.front,
   },
   {
      name = 'Markdown text inside some block element',
      selector = 'markup.quote, meta.paragraph.list',
      back = violet.back,
      color = violet.front,
   },
   {
      name = 'Markdown em',
      selector = 'markup.italic',
      back = red.back,
      color = red.front,
   },
   {
      name = 'Markdown strong',
      selector = 'markup.bold',
      color = red.front,
   },
   {
      name = 'Markdown reference',
      selector = 'markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdowdefinition.constant, meta.link.reference.markdown constant.other.reference',
      color = red.front,
   },
   {
      name = 'Markdown linebreak',
      selector = 'meta.paragraph.markdown meta.dummy.line-break',
      color = red.front,
   }
}

return scheme
