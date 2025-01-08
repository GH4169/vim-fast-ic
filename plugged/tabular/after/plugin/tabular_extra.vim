  " Provides extra :Tabularize commands

  if !exists(':Tabularize')
    finish " Give up here; the Tabular plugin musn't have been loaded
  endif

AddTabularPattern = /\(=\|?=\|+=\|:=\)
