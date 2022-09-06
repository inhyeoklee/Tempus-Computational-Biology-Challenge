# Tempus Coding Challenge #1
##### Inhyeok (Daniel) Lee, UT Austin
#
#
    🔎 Investigating the UNIX/LINUX Files System
#### Investigate the Unix/Linux files system.
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
In this code example, we practiced adding a softlink and hardlink to the empty directory, "_Tempus_," starting with a link count of 2 (link to itself and its parent directory). Specifically, we created a soft link called _shortcut_ and a hardlink called _hardlink1_. Then, we observed the reduction in the link number when we removed the original file that we created the hardlink from. Lastly, we accessed _hardlink1_ via its unique inode entry 52246611. The most useful command here is arguably find . -inum "inode number" because it targets the specific data block to act upon through the inode entry.