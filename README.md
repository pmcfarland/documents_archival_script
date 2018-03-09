# documents_archival_script
Powershell script for automatically archiving the Documents folder into a zip file. You could consider this a poor man's backup


Currently the script takes the whole Documents folder as the source. You can alter that to some other folder as desired, say perhaps a Scripts folder etc.

You will need to specify a destination folder. I put in a generic path there, so suit it to your needs.

Finally, no backup works unless it's automatic. You can use the Windows task scheduler to setup an automated task to execute the script every X days, hours, etc, whatever interval sounds best to you.

A quick note about scheduling Powershell scripts. Rather than pointing directly to the script itself you will need to have the task launch Powershell.exe with your script as an argument.
  For example: Target Powershell.exe -C:\Users\jsmith\scripts\archive.ps1

If you run into issues with you execution policy you can add a flag into that same task to --ExecutionPolicy Bypass. That will allow the script to run without having to lower the security for your whole system.
