# write a hello world example in powershell
Write-Host "Hello World"

# login to exchange online powershell and retrieve a list of calendar events for the current user containing specific text in the subject line and have the category set to "Client"
connect-exchangeonline
$subject = ""
$cat = ""
$cal = Get-MailboxCalendarEvent -CalendarViewRangeStart $((Get-Date).AddDays(-30)) -CalendarViewRangeEnd $((Get-Date).AddDays(30)) -ResultSize Unlimited -Subject $subject -Category $cat
$cal | Format-Table Subject, Start, End, Category

# how do I fix the "The term 'connect-exchangeonline' is not recognized as a name of a cmdlet, function, script file, or executable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again."

# Install-Module -Name ExchangeOnlineManagement -RequiredVersion 3.1.0

# install exchange online module
Install-Module -Name ExchangeOnlineManagement

# import exchange online module
Import-Module -Name ExchangeOnlineManagement

# login to exchange online powershell and retrieve a list of calendar events for the current user containing specific text in the subject line and have the category set to "Client"
connect-exchangeonline
$subject = ""
$cat = ""
$cal = Get-MailboxCalendarEvent -CalendarViewRangeStart $((Get-Date).AddDays(-30)) -CalendarViewRangeEnd $((Get-Date).AddDays(30)) -ResultSize Unlimited -Subject $subject -Category $cat
$cal | Format-Table Subject, Start, End, Category


