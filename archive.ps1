# Archive Script
# This script will archive the source directory into a date stamped zip file in the output directory
# @Author: PMcFarland
# @Date: 03.08.2018

# This line allows the script to run without errors. Without this the script throws an exception because Windows has symlinks
# My Music inside the My Documents folder because reasons. This causes an issue when run on an enterprise machine since
# the My Music folder does not exist.
$ErrorActionPreference = 'SilentlyContinue'

# Fetches the current date and time in order to append it onto the filename
$datestamp = (get-date -Format "MM-dd-yyyy_hh.mm.ss")

# Using enviroment variables to make things fancy, but the absolute path works fine too.
$source = [Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments)

# Where to put the zip file, in thise case I have elected to use a subfolder in my OneDrive
$destination = "C:\Users\<username>\path\to\where\you\want\Documents_Backup_" + $datestamp+".zip"

Compress-Archive -Path $source -DestinationPath $destination
