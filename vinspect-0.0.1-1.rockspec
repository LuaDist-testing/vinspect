-- This file was automatically generated for the LuaDist project.

package = "vinspect"
version = "0.0.1-1"
-- LuaDist source
source = {
  tag = "0.0.1-1",
  url = "git://github.com/LuaDist-testing/vinspect.git"
}
-- Original source
-- source = {
--    url = "git://github.com/mpeterv/vinspect",
--    tag = "0.0.1"
-- }
description = {
   summary = "Interactive Lua value visualizer.",
   detailed = [[
vinspect is a library for interactive inspection of complex Lua values.
It visualizes them via ncurses and allows browsing table structures
using mouse and keyboard.]],
   license = "MIT/X11",
   homepage = "https://github.com/mpeterv/vinspect"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luaposix >= 33.3.1"
}
build = {
   type = "builtin",
   modules = {
      vinspect = "vinspect.lua",
      ["vinspect.mouse"] = {
         sources = {"mouse.c"},
         libraries = {"ncurses"}
      }
   },
   copy_directories = {}
}