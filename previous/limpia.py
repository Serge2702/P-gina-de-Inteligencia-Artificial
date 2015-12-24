#!/usr/bin/python2
# -*- coding: utf-8 -*-
import subprocess, sys
texto=" ".join(sys.argv[1:])

def execute_lisp(arguments):
    path="sbcl --script " + arguments
    print path
    try:
        salida=subprocess.check_output(path,stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError as inst:
        print inst.output
        exit(1)
    else:
        print salida
        exit(0)

print texto
execute_lisp(texto)
