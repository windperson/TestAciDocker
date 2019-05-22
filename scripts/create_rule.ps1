

# Configure the secure password for the service principal
Import-Module Az.Resources # Imports the PSADPasswordCredential object
$password = [guid]::NewGuid().Guid
$secpassw = New-Object Microsoft.Azure.Commands.ActiveDirectory.PSADPasswordCredential -Property @{ StartDate=Get-Date; EndDate=Get-Date -Year 2024; Password=$password}
