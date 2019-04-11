# Requirements
Install powershell module for MSOnline
- Open powershell with administrator, and run below command
```
Install-Module -name MSOnline
```

# Connect to Azure Active Directory
```
$UserCredential = Get-Credential
Connect-MsolService -Credential $UserCredential
```