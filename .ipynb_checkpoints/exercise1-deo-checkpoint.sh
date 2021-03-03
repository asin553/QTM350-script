# let's use the following command to list the outputs of the current working directory

ls

# Now we want to see the permissions in the directory

ls -l

# the cut command on the output of the directory in order to display only the file permissions; we pass the previous command output to the cut command using a pipeline 

ls -l | cut

# since the column of the file permissions output are separated by space from the other columns, we want to tell cut that the delimiter that is separating the columns is a space

ls -l | cut -d ' '

# we only want to extract the first column in the directory output, as these are the permissions, and here fields is equivalent to columns

ls -l | cut -d ' ' -f 1

# we add another pipeline to the output to sort

ls -l | cut -d ' ' -f 1 | sort

# we add another pipeline to the output to officially filter out any double lines and to get a file with a unique permission

ls -l | cut -d ' ' -f 1 | sort | uniq

# let's count the number of lines in the file to give the number of fidderent permission types in this current working directory

ls -l | cut -d ' ' -f 1 | sort | uniq | wc -l

# we can change the ls  command to make this script work in the home directory

ls -l ~ | cut -d ' ' -f 1 | sort | uniq | wc -l

# to take in an argument, $1 will allow the script to then take the first argumnt passed to the script\

ls -l $1 | cut -d ' ' -f 1 | sort | uniq | wc -l

# make sure to save the script and change the permissions

chmod u+x exercise1-deo.sh

# we can then pass the home directory as the argument in terminal with this command

./exercise1-deo.sh ~

# to pass the script to any directory, put the directory name in place of ~