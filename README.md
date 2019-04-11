# Requirements
Install MSOnline powershell module
- Open powershell with administrator, and run below command
```
Install-Module -name MSOnline
```

# Connect to Azure Active Directory
```
$UserCredential = Get-Credential
Connect-MsolService -Credential $UserCredential
```