#!/usr/bin/env th

--┏━━━━━━━━━━━━━━┓
--┃                          ┃
--┃                   COLORS ┃
--┃                          ┃
--┗━━━━━━━━━━━━━━┛

local colors = {
   violet       = { front='#6a71e5', back ='#f0f1fd'},
   blue         = { front='#2f87fb', back ='#eaf3ff'},
   cyan         = { front='#35b8e5', back ='#ebf8fd'},
   lightblue    = { front='#65d0fc', back ='#f0fbff'},
   green        = { front='#23cd4a', back ='#edfcf0'},
   pink         = { front='#ff4966', back ='#ffedf0'},
   red          = { front='#ff5533', back ='#ffeeeb'},
   orange       = { front='#ffa503', back ='#fff6e6'},
   yellow       = { front='#ffd201', back ='#fffbe6'},
   grey         = { front='#9fa0a4', back ='#f6f6f6'},
   black        = { front='#9fa0a4', back ='#f6f6f6'},
}

--┏━━━━━━━━━━━━━━┓
--┃                          ┃
--┃                   SCOPES ┃
--┃                          ┃
--┗━━━━━━━━━━━━━━┛

scheme = {
   general = {},
   language = {},
}

scheme.general = {
   {
      selector = 'invisibles',
      color = '#E0E0E0'
   },
   {
      selector = 'background',
      color = '#eeeeee'
   },
   {
      selector = 'lineHighlight',
      color = '#ffffff'
   },
   {
      selector = 'gutterForeground',
      color = '#333333'
   },
   {
      selector = 'foreground',
      color = '#222222'
   },
   {
      selector = 'selection',
      color = '#fdbece'
   },
   {
      selector = 'selectionBorder',
      color = '#000000'
   },
   {
      selector = 'caret',
      color = '#000000'
   },
   {
      selector = 'brackets',
      color = '#839496'
   },
   {
      selector = 'guide',
      color = '#dddddd'
   },
   {
      selector = 'activeGuide',
      color = '#ffffff'
   },
   {
      selector = 'inactiveSelection',
      color = '#cffff9'
   },
   {
      selector = 'findHighlight',
      color = '#FFE792'
   },
}

scheme.language.lua = {
   {
      name = 'LUA comments', -- comment
      selector = 'comment, comment punctuation',
      color ='#000000',
      style='bold italic'
   },
   {
      name = 'LUA numbers',--'2,3,4'
      selector = 'constant',
      color = '#000000',
      style = 'bold',
      background = '#ffffff',
   },
   {
      name = 'LUA arythmetic signs',--'==, =, >'
      selector  = 'keyword.operator',
      background = colors.blue.back,
      color = colors.blue.front,
   },
   {
      name = 'LUA controls keyword',--'function return,in, do'
      selector = 'keyword.control',
      background = colors.green.back,
      color = colors.green.front,
   },
   {
      name = 'LUA constants',--'true, false'
      selector = 'constant.language',
      background = colors.cyan.back,
      color = colors.cyan.front,
      style = 'bold',
   },
   {
      name = 'LUA support functions',--'io.open, table.insert'
      selector = 'support.function',
      style = 'italic',
      background = colors.blue.back,
      color = colors.blue.front,

   },
   {
      name = 'LUA user variables',--'x, color1'
      selector = 'variable',
      color='#147B8A',
   },
   {
      name = 'LUA user function name',--'fun.grid(opt)'
      selector = 'entity.name.function',
      style = 'italic',
      background = colors.violet.back,
      color = colors.violet.front,
   },
   {
      name = 'LUA user function arguments',--'opt'
      selector  = 'variable.parameter',
      background = colors.red.back,
      color = colors.red.front,
   },
   {
      name = 'LUA user strings',
      selector= 'constant.character, string',
      background = colors.pink.back,
      color = colors.pink.front,
   },
   {
      name = 'LUA user strings',--strings, key strings, quotes'
      selector= 'punctuation',
      color='#444',
   }
}

-- scheme.language.css = {
--    {
--       name = 'CSS Selector - Tag',
--       selector = 'entity.name.tag.css',
--       background = colors.pink.back,
--       color = colors.pink.front,
--       style = 'bold',
--    },
--    {
--       name = 'CSS Selector - Id',
--       selector = 'source.css entity.other.attribute-name.id'
--       background = colors.pink.back,
--       color = colors.pink.front,
--       style = 'bold',
--    },
--    {
--       name = 'CSS Selector - Class',
--       selector = 'entity.other.attribute-name.class'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Pseudo Class',
--       selector = 'entity.other.attribute-name.pseudo-element, entity.other.attribute-name.pseudo-class'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Property Name',
--       selector = 'support.type.property-name'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Property Value',
--       selector = 'support.constant.property-value'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Color',
--       selector = 'constant.other.color.rgb-value'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Unit',
--       selector = 'keyword.other.unit.css'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Font Name',
--       selector = 'support.constant.font-name'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Curly Brackets',
--       selector = 'punctuation.section.property-list.css'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Round Brackets',
--       selector = 'punctuation.section.function.css'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS url() / rgba() / hsla',
--       selector = 'support.function.misc.css'
--       background = colors.pink.back,
--       color = colors.pink.front,
--    },
--    {
--       name = 'CSS Parameter',
--       selector = 'variable.parameter.misc.css',
--       background = colors.pink.back,
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
