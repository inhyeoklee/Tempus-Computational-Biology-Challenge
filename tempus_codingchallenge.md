# Tempus Coding Challenge
##### Inhyeok (Daniel) Lee, UT Austin
This coding challenge intends to tackle three problems given by Dr. Tim Rand at _Tempus Labs_:

    🔎 Investigating the UNIX/LINUX Files System
    🔎 Creating a Bioinformatics Tool Set with Infix Function
    🔎 Making a Logging Decorator & Testing via Pytest

### Investigate the Unix/Linux files system.
> Create files, directories, and nested directories and monitor the stat information. Also pay attention to the inode information. Can you explain how “Links” increments and decrements for directories and files? What command can you use to target a file via inode number? What are the Links in an empty directory? How do stat links relate to the ln function? While investigating this system, what were the most useful/informative commands? Document all your discoveries, experiments including commands and their results in a markdown document or text file and submit to a public github account. We are interested in how deeply you investigate, how organized and thorough your notes are. 

This question requires one's understanding over the linux system and its inode entries holding the metadata. The inodes consist of the following items: super block, inode table, and data blocks. To start with, super block functions as the back-up file. For this investigation, we are more concerned with **inode table and data blocks** because we want to understand how UNIX/Linux files system could be managed by soft links and hard links that connect data blocks and inode table. To put it simple, data blocks store the actual information, whereas inode tables store the file size, device ID, UID, GID, mode, timestamps, and most importantly pointer to data.
```sh
## Showing # of inodes for files & inode values
ls -l
ls -li
ls -li Tempus
## Creating a soft link to Tempus directory
ln -s Tempus shortcut
ls -li Tempus shortcut
## Incrementing a hard link to codechallenge file
cd Tempus
ln codechallenge.txt hardlink1
ls -li codechallenge.txt hardlink1
## Removing the original file and decrementing the link number from 2 to 1
rm codechallenge.txt
ls -li hardlink1
ls -lai
# targeting the "hardlink1" file using the inode entry
stat hardlink1
find . -inum 52246611
```
In this code example, we practiced adding a softlink and hardlink to the empty directory, "_Tempus_," starting with a link count of 2 (link to itself and its parent directory). Specifically, we created a soft link called _shortcut_ and a hardlink called _hardlink1_. Then, we observed the reduction in the link number when we removed the original file that we created the hardlink from. Lastly, we accessed _hardlink1_ via its unique inode entry 52246611. 
### Get familiar with a new language ecosystem, installation and understand infix operators.
> Install Julia, then install Pluto (similar to jupyter notebooks for python or R-Studio for R) and create a notebook where you create a bioinformatics tool set including your own version of an infix operator-type function that works like a pipe in unix/linux taking information on the left and sending it to the function on the right. For instance, the operator takes strings representing DNA and a function name and runs the function with the string as the parameter. Infix operators work like the plus symbol in the statement  1 + 1 => +(1,1) => 2 
Another example is the times symbol in 3 * 2 => *(3,2) => 6.
Please note the |> is julia’s own infix pipe symbol. Do not use it–we want you to recreate it yourself. 
You can go as far as you care with that notebook. We are interested in how clear and concise your code is, how easily you adapt to new tools. Submit the saved notebook file to a public github account and submit the url for review. 

This question 
```sh
cd dillinger
npm i
node app
```

### Make a Logging Decorator in Python and test with pytest.
> Here is an example function that access a file and prints the contents:
 def cat(path):
     with open(path) as filehandle:
          for line in filehandle:
              print(line, end='')
usage:
cat('LN2TransferREADME.txt')
Procedure for lab operations LN2 Transfer using MBR github repository.
Create a decorator that can be applied to any function that appends a log message to a log file with a one-line report including:
[LOG] tag 
Function name
All arguments and keyword arguments used in the call signature
Error if any
The returned result
So, for instance:
@log_it 
 def cat(path):
     with open(path) as filehandle:
          for line in filehandle:
              print(line, end='')
@log_it
def add(a,b):
    return a+b
add(1,10)
cat('gs://my_bucket/my_file.txt')
cat('LN2TransferREADME.txt')
#contents of log.txt, could be more beautiful logging syntax
[LOG] <function add at 0x108563010>((1, 10),{}) ==> 11 <class 'int'>
[LOG] <function cat at 0x108562200>(('gs://my_bucket/my_file.txt',),{}) ==> [Errno 2] No such file or directory: 'gs://my_bucket/my_file.txt'
[LOG] <function cat at 0x108562200>(('LN2TransferREADME.txt',),{}) ==> None <class 'NoneType'>
The @log_it decorator provides logging to all its decorated functions, recording their activity/results while the decorated function behaves exactly as it was originally intended. 
Use pytest to prove log_it works–log file contents are as expected.
Submit the code (decorator, and any small test functions) and test file to github and provide the url. 

This question requires one's understanding over the linux system and its inode entries holding the metadata. The inodes consist of the following items: super block, inode table, and data blocks. file size, device ID, UID, GID, mode, timestamps, and most importantly pointer to data.
```sh
cd dillinger
npm i
node app
```