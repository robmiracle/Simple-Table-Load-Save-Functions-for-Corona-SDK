Simple to use Table Save and Table Load functions for Lua and Corona SDK

USAGE:

	local loadsave = require("loadsave")

	myTable = {}
	myTable.musicOn = false
	myTable.soundOn = true

	loadsave.saveTable(myTable, "myTable.json")

Then to read it back in: `myTable = loadsave.loadTable("myTable.json")`

This basic code, by default, uses system.DocumentsDirectory to save game settings.  If you need to save
files to other locations, you can pass another argument "CachesDirectory" or "TemporaryDirectory" to the function to
apply the change to the specified location.

For example:
	loadsave.saveTable(myTable, "myTable.json", system.TemporaryDirectory)
	loadsave.loadTable("myTable.json", system.TemporaryDirectory)

If you'd like to change the default directory, then you can change the variable in the code
(`DefaultLocation = system.TemporaryDirectory`) or call `loadsave.changeDefault(system.TemporaryDirectory)` within your code.

