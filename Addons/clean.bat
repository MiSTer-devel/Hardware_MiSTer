@echo off
del /s debug.log
for /d %%p in (*) do for /d %%n in (%%p\Project*) do rmdir /s /q "%%n"
for /d %%p in (*) do rmdir /s /q "%%p\History"
for /d %%p in (*) do rmdir /s /q "%%p\__Previews"

pause
