# Active Directory Inactive User Finder

This is a PowerShell script that can be used to find all users in Active Directory who haven't logged in for the past 30 days. The script outputs a list of these inactive users along with their last logon time in a human-readable format.

## Requirements

To run this script, you'll need:

- A Windows Server with the Active Directory module installed
- Permission to query Active Directory for user information

## Usage

1. Open PowerShell on your Windows Server.

2. Navigate to the directory where the script file is located.

3. Run the following command to execute the script:

```
.\Inactive-Users.ps1
```

4. The script will output a list of all inactive users in Active Directory along with their last logon time.

## Customization

If you need to customize the number of days to look back for inactive users, you can modify the `$days` variable at the beginning of the script. You can also customize the properties that are displayed for each inactive user by modifying the `Select-Object` cmdlet.

## Disclaimer

This script is provided as-is and without warranty or support. Use at your own risk.

## License

This script is licensed under the [MIT License](https://opensource.org/licenses/MIT).
