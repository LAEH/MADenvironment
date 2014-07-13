#!/usr/bin/env th

--┏━━━━━━━━━━━━━━┓
--┃              ┃
--┃              ┃
--┃              ┃
--┃              ┃
--┗━━━━━━━━━━━━━━┛

-- COLORS
local base = '#eeeeee'
local colors = {
   violet       = { front='#530ff5', back ='#e3f9fd'},
   cyan         = { front='#2cbae7', back ='#cbebf5'},
   green        = { front='#65b11a', back ='#f0f7ee'},
   pink         = { front='#fe2973', back ='#fcf1f4'},
   orange       = { front='#ffa502', back ='#fff6e6'},
   red          = { front='#ff5533', back ='#ffeeeb'},
   yellow       = { front='#ffd201', back ='#fffbe6'},
   grey         = { front='#9fa0a4', back ='#f6f6f6'},
   black        = { front='#9fa0a4', back ='#f6f6f6'},
   lightblue    = { front='#65d0fc', back ='#f0fbff'},
   blue         = { front='#2f87fb', back ='#eaf3ff'},
}

-- SCHE TABLE BUILDING

scheme = {
   general = {},
   language = {},
}

scheme.general = {
   { selector = 'background',        color =  base},
   { selector = 'invisibles',        color = '#E0E0E0'},
   { selector = 'lineHighlight',     color = '#ffffff'},
   { selector = 'gutterForeground',  color = '#bbbee1'},
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
   --┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
   --┃         COMMENTS & STRINGS ┃
   --┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
   {
      name = 'LUA block string', -- [[string]]
      color = colors.pink.front,
      back = colors.pink.back,
      style='bold italic',
      selector = 'string.quoted.single',
   },
   {
      name = 'LUA user strings',
      style = 'bold',
      color = colors.green.front,
      selector= 'constant.character, string',
   },
   {
      selector = 'string.quoted.double',
      name     = 'LUA string',
      color    ='#000000',
      back     = base,
      style    ='bold italic',
   },
   {
      name = 'LUA comment', -- this is a comment
      color = '#000',
      style='bold italic',
      selector = 'comment, comment punctuation',
   },
   {
      name = 'LUA comments block', -- [[string]]
      color = colors.pink.front,
      style='bold italic',
      selector = 'comment.block',
   },

   --┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
   --┃ LANGUAGE KEYWORDS & CONSTANTS ┃
   --┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
   {
      name  = 'LUA support functions',-- 'io. table. os. math. .file'
      style = 'italic',
      color = colors.blue.front,
      selector = 'support.function',

   },
   {
      name = 'LUA controls keyword', -- 'local' 'function' 'for' 'if'
      back = colors.orange.back,
      color = colors.orange.front,
      style = 'bold',
      selector = 'keyword.control',
   },
   {
      name = 'LUA user function name',-- 'MADweb.' 'MADcolors. '
      style = 'italic bold',
      color = colors.violet.front,
      selector = 'entity.name.function',
   },

   {
      name = 'LUA arythmetic signs',--'==, =, >'
      back = colors.violet.back,
      color = colors.violet.front,
      selector  = 'keyword.operator',
   },
   {
      name = 'LUA constants',--'true, false'
      color = colors.red.front,
      style = 'bold',
      selector = 'constant.language',
   },
   --┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
   --┃                  USER DEFINED ┃
   --┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
   {
      name = 'LUA numbers',--'2,3,4'
      color = '#000000',
      style = 'bold',
      color = colors.red.front,
      selector = 'constant',
   },
   {
      name= 'LUA user variables',--'x, color1'
      color='#147B8A',
      selector = 'variable',
   },
   {
      name = 'LUA user function arguments',--'opt'
      color = colors.green.front,
      back = colors.green.back,
      selector  = 'variable.parameter',
   },
   {
      name = 'LUA user strings',--strings, key strings, quotes'
      color='#444',
      selector= 'punctuation',
   }
}

-- scheme.language.css = {
--    {
--       name = 'CSS Selector - Tag',
--       selector = 'entity.name.tag.css',
--       back = colors.pink.back,
--       color = colors.pink.front,
--       style = 'bold',
--    },
--    {
--       name = 'CSS Selector - Id',
--       selector = 'source.css entity.other.attribute-name.id'
--       back = colors.pink.back,
--       color = colors.pink.front,
--       style = 'bold',
--    },
--    {
--       name = 'CSS Selector - Class',
--       selector = 'entity.other.attribute-name.class'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Pseudo Class',
--       selector = 'entity.other.attribute-name.pseudo-element, entity.other.attribute-name.pseudo-class'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Property Name',
--       selector = 'support.type.property-name'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Property Value',
--       selector = 'support.constant.property-value'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Color',
--       selector = 'constant.other.color.rgb-value'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Unit',
--       selector = 'keyword.other.unit.css'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Font Name',
--       selector = 'support.constant.font-name'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Curly Brackets',
--       selector = 'punctuation.section.property-list.css'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Round Brackets',
--       selector = 'punctuation.section.function.css'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS url() / rgba() / hsla',
--       selector = 'support.function.misc.css'
--       back = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Parameter',
--       selector = 'variable.parameter.misc.css',
--       back = colors.pink.back,
--       color = colors.pink.front,
--    }
-- }

-- scheme.language.markdown = {
--    {
--       name = 'Markdown punctuation',
--       selector = 'markup.list, text.html.markdown punctuation.definition, meta.separator.markdown',
--    },
--    {
--       name = 'Markdown heading',
--       selector = 'markup.heading',
--    },
--    {
--       name = 'Markdown text inside some block element',
--       selector = 'markup.quote, meta.paragraph.list',
--    },
--    {
--       name = 'Markdown em',
--       selector = 'markup.italic',
--    },
--    {
--       name = 'Markdown strong',
--       selector = 'markup.bold',
--    },
--    {
--       name = 'Markdown reference',
--       selector = 'markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdowdefinition.constant, meta.link.reference.markdown constant.other.reference',
--    },
--    {
--       name = 'Markdown linebreak',
--       selector = 'meta.paragraph.markdown meta.dummy.line-break',
--    }
-- }

return scheme
