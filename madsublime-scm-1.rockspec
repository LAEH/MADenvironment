package = "madmadenvironment"
version = "scm-1"

source = {
   url = "git://github.com/laeh/madmadenvironment",
   branch = "master"
}

description = {
   summary = "madmadenvironment",
   detailed = [[
      Software Development Environment
   ]],
   homepage = "https://github.com/laeh/madmadenvironment",
   license = "bsd"
}

dependencies = {
}

build = {
   type = "builtin",
   modules = {
      ['madmadenvironment.init'] = 'init.lua',
      ['madmadenvironment.schemes'] = 'schemes.lua',
      ['madmadenvironment.schemes'] = 'syntax.lua',
      ['madmadenvironment.preferences'] = 'preferences.lua',
   }
}
