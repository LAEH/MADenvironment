Usefull Commands
================


create link/alias

```
ln -s src dst
```


Lua
---

```lua
os.execute('ls')
os.execute('ll')
os.execute('ls -a : See all')
os.execute('ln -s SOURCE DESTINATION')
os.execute('ls -1 | grep “ “')
os.execute("mkdir -p " .. toryrun)
os.execute('mv fromfile tofile')
os.execute('cp fromfile tofile')
os.execute('rm file')
os.execute('chmod +x fileTO make executable')

torch.normal(0,1) t = torch.FloatTensor(100) t:normal(0,1)

sync
----


ifconfig find . -name “.toosmall” -exec rm {} \; find . -name “.x” -exec rm {} \; find . -name “*.th” -exec rm {} \;
min=math.huge

```
Git
---


git clone git@github.com:LAEH/MADpixels.git -b gh-pages
touch .gitignore
open .gitignore


UNIX
----

ifconfig
find . -name “*.toosmall” -exec rm {} \;
find . -name “*.x” -exec rm {} \;
find . -name “*.th” -exec rm {} \;


ls –1 | grep “ “


UNIX
----


update:
luarocks install trepl
luarocks install gfx.js

--ensuite tu devrais pouvoir lancer 'th' avec gfx pre-loadé:
th -x

ca marche?

si oui, de th:
> gfx.chart()
> pixels = require 'pixels'
> gfx.image(image.lena())

Tente aussi "+Term" dans l'UI. Ca c'est l'element de base, le terminal emulator. j'ai fixé les fonts, c'est la meme font que iterm par default.

Screenshot du term:
