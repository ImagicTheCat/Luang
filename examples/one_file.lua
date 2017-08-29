-- add package path for the example
package.path = package.path..";../src/?.lua;"

-- lib
local Luang = require("Luang")

-- instanciate lang/translator
local tr = Luang()

-- load single lang file for all languages
tr:load(dofile("lang/all.lua"))

function test(locale)
  local lang = tr.lang[locale]
  print("\n"..lang.test({locale}))
  print(lang.hi())
  print(lang.more())
end

test("en")
test("foo")
test("iml")

print("\nExtend dict with another file: ")
tr:load(dofile("lang/allmore.lua"))
test("en")
test("foo")
test("iml")
