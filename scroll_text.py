#!/usr/bin/env python

from sys import stdin
from sys import argv
import datetime

text = stdin.read( ).strip( )

length = int(argv[1])

if len( text ) <= length:
    n_spaces = round( ( length - len( text ) ) / 2 )
    spaces = n_spaces * " "
    # print( spaces + text + spaces )
    print( text )
    exit( )

text += "        "
text *= 100

now = datetime.datetime.now( )
timestep = round( now.microsecond / 100000 + now.second*10 )

offset = round( timestep / 5 )

print( text[offset:length+offset] )

