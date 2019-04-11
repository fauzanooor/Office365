# Check User list
Get-MsolUser -All

# check user count
Get-MsolUser -All | measure

# Check available licenses
Get-MsolAccountSku