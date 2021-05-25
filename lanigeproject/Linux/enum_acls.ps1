$directory = $(Get-ChildItem)  # Store cmd output

# Iterate through each file entry
foreach ($item in $directory) {
    Get-Acl $item  # Get the ACL
}