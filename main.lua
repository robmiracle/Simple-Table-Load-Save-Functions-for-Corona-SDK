local loadsave = require("loadsave")

local t = {}
t.number = 10
t.string = "Hello World"
t.bool = true
t.table = { someOtherString = "this is a test", someOtherNumber = 5}

loadsave.saveTable(t, "myTable.json", system.DocumentsDirectory)

newTable = loadsave.loadTable("myTable.json", system.DocumentsDirectory)

loadsave.printTable(newTable)