
Luang is the fusion of `Lua` and `Lang`, it is a simple library that uses the flexibility of the metatables to access translations.

Look at `examples/` to understand the usage.


= Getting started

```lua
-- lib
local Luang = require("Luang")

-- create Lang object (or "translator")
local tr = Luang()
```

= Lang methods/properties

```lua
-- load a dict table to the lang dict
Lang:load(dict)

-- load a dict table to the lang dict for a specific locale (concretely, it's a prefix)
Lang:loadLocale(locale, dict)

-- lang access property
Lang.lang
```
