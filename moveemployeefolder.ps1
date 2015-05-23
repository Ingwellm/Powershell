#Move employee documents to supervisor folder

#Get username 
$employee = raw-input "Please enter employee login name "

#Set location for redirected folders
$DocumentLocation = 'd:\' #Change to correct location

#Get supervisor username
$SupervisorName = raw-input "Please enter supervisor login name "

#Copy employee folder to supervisor folder
copy-item $DocumentLocation\$employee -Destination $DocumentLocation\$SupervisorName

