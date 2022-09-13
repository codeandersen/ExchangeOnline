#Config Variables
$SiteURL = "https://hifiklubbendanmark.sharepoint.com"
$FolderName= "Team Projects"
$SiteRelativeURL= "/sites/123TESTHIFI77/Shared Documents" #Site Relative URL of the Parent Folder
 
Try {
    #Connect to PnP Online
    Connect-PnPOnline -UseWebLogin -Url $SiteURL
     
    #sharepoint online create folder powershell
    Add-PnPFolder -Name $FolderName -Folder $SiteRelativeURL -ErrorAction Stop
    Write-host -f Green "New Folder '$FolderName' Added!"
}
catch {
    write-host "Error: $($_.Exception.Message)" -foregroundcolor Red
}
