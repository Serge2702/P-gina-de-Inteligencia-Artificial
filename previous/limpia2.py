#!/usr/bin/python2
# -*- coding: utf-8 -*-
import subprocess, sys
texto=" ".join(sys.argv[1:])

def execute_lisp(arguments):
    path="/usr/bin/sbcl --script " + arguments
    #print path
    #print subprocess.check_output("pwd");
    try:
        salida=subprocess.check_output(path,stderr=subprocess.STDOUT,shell=True)
    except subprocess.CalledProcessError as inst:
        print inst.output
        print salida
        exit(1)
    else:
        print salida
        exit(0)

#print texto
execute_lisp(texto)
