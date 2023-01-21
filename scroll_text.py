#!/bin/python3

from sys import stdin
import datetime

text = stdin.read( ).strip( )

length = 29

if len( text ) <= length:
    print( text )
    exit( )

text += " "
text *= 100

now = datetime.datetime.now( )
timestep = round( now.microsecond / 100000 + now.second*10 )

offset = round( timestep / 5 )

print( text[offset:length+offset] )

