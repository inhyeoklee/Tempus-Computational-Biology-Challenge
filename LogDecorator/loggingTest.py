from log_it import log_it
import os

@log_it
def cat(path):
    with open(path) as filehandle:
        for line in filehandle:
            print(line, end='')

@log_it
def add(a,b):
    return a+b


try:
    os.remove('log.txt') #Remove log.txt if exist before testing
except FileNotFoundError:
    pass

add(1,10)
cat('gs://my_bucket/my_file.txt')
cat('LN2TransferREADME.txt')



