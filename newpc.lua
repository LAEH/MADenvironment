local newpc = {}


-- NEW COMPUTER
-- 1.App store 1password
-- 1.Update XCODE + package
-- software


local license  = {
   alfred = [[
      A2FLZjcwZTczNTBlMGFlGFcnvE8k3+V2SexzaCmR84Pvv5XzZq
      4sFMpqgP0y92YBBagW09vz9tM9C13GWazTlOYjw8OJvI8yrP3T
      W/3kmRt7DFSdY/8tbXq/l5roB2DjaBIYvwfeQ3ToDH1xpJK+8V
      3JbP3ziWSMhDd9hIEaX0T3jP+q20ylN0hiinQ1n3vTtTzUNVQY
   ]],
   sublime = [[
      ----- BEGIN LICENSE -----
      CLA
      Single User License
      EA7E-811485
      9EBB0FE0 A53395FB 96413530 1812A2D4
      55381096 C4C054D0 87D21E30 EFD2A2B5
      6BAF956C 0BA05B86 83CF79D0 E3F089D6
      E2CB812B EF01BC94 06FB0B09 2622B2E3
      70AE886D 4E0690B6 97308E62 EDF0A3C3
      7BE941E6 EDD35600 56504254 72C7224F
      C7958A23 E1E9BC96 2A98538C 267E9748
      15AA11DE 0FB194C2 793689BA 7454F10C
      ------ END LICENSE ------
   ]]

}

local preferenceSublime  = [[
   {
      "bold_folder_labels": true,
      "color_scheme": "Packages/MAD/MADtheme1404417252.tmTheme",
      "draw_white_space": "selection",
      "ensure_newline_at_eof_on_save": true,
      "highlight_modified_tabs": true,
      "fade_fold_buttons": false,
      "word_wrap": true,
      "bold_folder_labels": true,
      "folder_exclude_patterns":
      [
         ".svn",
         ".git",
         ".hg",
         "CVS",
         "node_modules",
         "bower_components"
      ],
      "font_face": "Source Code Pro",
      "font_size": 8,
      "highlight_line": true,
      "highlight_modified_tabs": true,
      "ignored_packages":
      [
         "Vintage"
      ],
      "indent_guide_options":
      [
         "draw_active",
         "draw_normal"
      ],
      "line_padding_bottom": -1,
      "line_padding_top": -1,
      "overlay_scroll_bars": "enabled",
      "save_on_focus_lost": true,
      "scroll_past_end": true,
      "shift_tab_unindent": true,
      "tab_size": 3,
      "theme": "Asphalt-monochrome.sublime-theme",
      "translate_tabs_to_spaces": true,
      "trim_trailing_white_space_on_save": true,
      "word_wrap": true
   }
]]


---- BREW
os.execute('brew install nodejs')
os.execute('brew install npm')
os.execute('brew install graphicsmagick')
os.execute('brew install s3cmd')
os.execute('brew install multitail')
os.execute('brew install htop')
os.execute('brew install boost')



---- LUA
---- https://github.com/torch/ezinstall
os.execute('luarocks install lua-cjson')
os.execute('luarocks install luasocket')
os.execute('luarocks install image')
os.execute('luarocks install ffmpeg')
os.execute('luarocks install imgraph')
os.execute('luarocks install graphicsmagick')
os.execute('luarocks install nnx')
os.execute('luarocks install curl')
os.execute('luarocks install torchffi')
os.execute('luarocks install persist')
os.execute('luarocks install async')
os.execute('luarocks install md5')
os.execute('luarocks install gfx.js')
os.execute('luarocks install manifold')
os.execute('luarocks install utf8')
os.execute('luarocks install buffer')
os.execute('luarocks install redis-async')
os.execute('luarocks install redis-queue')
os.execute('luarocks install lbase64')
os.execute('luarocks install underscore')
os.execute('luarocks install thmap')

---- WEB
os.execute(sudo gem update --system)
os.execute(sudo gem install sass-globbing)
os.execute(sudo npm install http-server -g)
os.execute(npm install jade --global)


local terminalColor = {
   _black   = 'function: 0x058ad290',
   _blue    = 'function: 0x058ad310',
   _cyan    = 'function: 0x058ad558',
   _green   = 'function: 0x058ad228',
   _magenta = 'function: 0x058ad498',
   _red     = 'function: 0x058a8c30',
   _white   = 'function: 0x058ad518',
   _yellow  = 'function: 0x058ad168',
   Black    = 'function: 0x058ad080',
   black    = 'function: 0x058ad2d0',
   blue     = 'function: 0x058ad1a8',
   Blue     = 'function: 0x058ad598',
   cyan     = 'function: 0x058ad0c0',
   Cyan     = 'function: 0x058ad8e0',
   green    = 'function: 0x058ad100',
   Green    = 'function: 0x058ad920',
   Magenta  = 'function: 0x058ad140',
   magenta  = 'function: 0x058ad350',
   none     = 'function: 0x058a8b98',
   Red      = 'function: 0x058ad450',
   red      = 'function: 0x058ad4d8',
   white    = 'function: 0x058ad1e8',
   White    = 'function: 0x058ad390',
   Yellow   = 'function: 0x058ad3d0',
   yellow   = 'function: 0x058ad410',
}

