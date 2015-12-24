#!/usr/bin/python3
# -*- coding: utf-8 -*-
import subprocess, sys 
texto=" ".join(sys.argv[1:])

def execute_lisp(arguments):
    path="/usr/bin/sbcl --script tile_lib.lisp " + arguments
    #print path
    #print subprocess.check_output("pwd");
    #start_time=time.time()
    try:
        salida=subprocess.check_output(path,stderr=subprocess.STDOUT,shell=True,timeout=60,universal_newlines=True)
    except subprocess.CalledProcessError as inst:
        print(inst.output)
        #print(salida)
        exit(1)
    except subprocess.TimeoutExpired as inst:
        #print("El algoritmo tardó demasiado tiempo antes de entregar un resultado.")
        exit(2)
    else:
        #exec_time=time.time()-start_time
        #print("var exec_time="+str(exec_time)+";"),
        print(salida)
        exit(0)

#print texto
execute_lisp(texto)
