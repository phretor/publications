check.double = {off}
print.line.length = 79
print.use.tab = {off}
suppress.initial.newline = {on}

sort = {on}
sort.reverse = {on}
sort.format = {%N(date)}

key.generation = {on}
fmt.et.al = {}
key.expand.macros = on
key.base = upper
key.number.separator = {}
key.format =
{
    %s(bibkey)
  #
    %0s(@inproceedings)
    { %-1n(author)_     # }
    { %-s(shorttitle)_  # }
    { %4d(date)         # %4d(year) }
  #
    %0s(@unpublished)
    { %-1n(author)_           # }
    { %-s(shorttitle)_talk_   # }
    { %4d(date)               # %4d(year) }
  #
    %0s(@techreport)
    { %-1n(author)_           # }
    { %-s(shorttitle)_tr_     # }
    { %4d(date)               # %4d(year) }
  #
    { %-1n(author)_     # }
    { %-s(shorttitle)_  # }
    { %-s($type)_       # }
    { %4d(date)         # %4d(year) }
}
