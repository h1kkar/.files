#!/usr/bin/python

import time

n = "yes"
while n == "yes":
    a = input("\ninput here: ")
    
    a = a.split(" ")
    
    x = int(a[0])
    y = int(a[2])
    
    if a[1] == '+':
        print ("output: ", x + y, '\n')
    elif a[1] == '-':
        print ("output: ", x - y, '\n')
    elif a[1] == '*':
        print ("output: ", x * y, '\n')
    elif a[1] == '/':
        if y == 0:
            print ("what is this?", '\n')
            break
        else:
            print ("output: ", x / y, '\n')
    else:
        print ("what is this?", '\n')
    
    n = input("next?\n")
    if n == "no":
        print ("\nbye bye, homie :)")
