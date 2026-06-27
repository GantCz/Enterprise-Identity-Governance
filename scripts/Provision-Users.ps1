# Security-Hardened Usr Provisioning Script
# This script automates the creation of users in a designated OU with forced password policies for security compliance.

# Imports Active Directory Module
Import-Module ActiveDirectory

# Path to your CSV file
$csvPath = "$env:USERPROFILE\Desktop\users.csv"
$domain = (Get-ADDomain).DistinguishedName
$securePassword = ConvertTo-SecureString "P@ssword123!" -AsPlainText -Force

# Read CSV and process accounts
Import-Csv -Path $csvPath | ForEach-Object {
	$samAccountName = ($_.FirstName.Substring(0,1) + $_.LastName).ToLower()
	$userPrincipalName = "$samAccountName@$( (Get-ADDomain).DNSRoot )"
	$targetOU = "OU=$($_.Department),OU=Corporate-HQ,$domain"

	$userParams = @{
		GivenName             = $_.FirstName
		Surname               = $_.LastName
		Name                  = "$($_.FirstName) $($_.LastName)"
		SamAccountName        = $samAccountName
		UserPrincipalName     = $userPrincipalName
		Path                  = $targetOU
		AccountPassword       = $securePassword
		ChangePasswordAtLogon = $true
		Enabled               = $true
		Title                 = $_.Title
		Department            = $_.Department
	}
	
	# Create the user object
	New-ADUser @userParams
	Write-Host "Successfully provisioned account: $samAccountName inside $targetOU" -ForegroundColor Green
}
