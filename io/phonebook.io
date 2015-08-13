OperatorTable addAssignOperator(":", "atPutNumber")

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
    r doMessage(arg)
    )
  r
)

Map atPutNumber := method(
  self atPut(
    call evalArg(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArg(1))
)

s := File with ("phonebook.txt") openForReading contents
phoneNumbers := doString(s)
phoneNumbers keys println
phoneNumbers values println
