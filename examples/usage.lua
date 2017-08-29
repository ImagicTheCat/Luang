
-- add package path for the example
package.path = package.path..";../src/?.lua;"

-- lib
local Luang = require("Luang")

-- instanciate lang/translator
local tr = Luang()

-- load a dict table to a specific locale dict (combinable)
tr:loadLocale("en", dofile("lang/en.lua"))
tr:loadLocale("iml", dofile("lang/iml.lua")) -- imaginary language

-- access and format

-- everything in the lang property is accessed using tables, and formatted when called, it will never return a nil value, every access return a table
-- if the locale has been loaded before, you can shortcut the access

local lang = tr.lang["en"] -- select the locale here

function test()
  -- locale access
  print(lang.speak.ask_name())
  local name = io.read("*line")

  -- global access
  print(tr.lang.en.speak.hi({name}))

  -- use named arguments
  print(lang.speak.nice_name({name = name, length = string.len(name)}))
end

print("\nTest with en locale")
test()
print("\nChange locale to a non-existent one.")
lang = tr.lang["foo"] -- imaginary language
test()
print("\nChange locale to an imaginary language.")
lang = tr.lang["iml"] 
test()

print("\nTests")
print("-- print undefined access: "..lang.something.foo.bar({"arg1", "arg2"}))

print("-- use a default value: "..lang.something.foo.bar({"arg1", "arg2"}, "args are {1} and {2}"))
