@echo off

rem Compile all of the moonscript files below the current folder
moonc .
rem Run the love compiler on the compiled Lua code
lovec .