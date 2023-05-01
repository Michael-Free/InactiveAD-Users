# Import the Active Directory module
Import-Module ActiveDirectory

# Set the number of days to look back
$days = 30

# Get the current date and subtract the number of days to look back
$date = (Get-Date).AddDays(-$days)

# Convert the date to a file time format
$fileTime = $date.ToFileTime()

# Search for all users in Active Directory that haven't logged in for the past 30 days
$inactiveUsers = Get-ADUser -Filter {LastLogonTimeStamp -lt $fileTime} -Properties LastLogonTimeStamp

# Output the results to the console
$inactiveUsers | Select-Object Name, @{Name="LastLogon"; Expression={[DateTime]::FromFileTime($_.lastLogonTimestamp)}}
