param (
    [Parameter(Mandatory=$true)]
    [string]
    $region
  )

$content = '[{
    "ParameterKey": "StackType",
    "ParameterValue": "Small"
},{
    "ParameterKey": "10LansaGitRepoBranch",
    "ParameterValue": "$env:COOKBOOKSBRANCHPREVIEW"
},{
    "ParameterKey": "UpdateManagementScripts",
    "ParameterValue": "Yes"
},{
    "ParameterKey": "$env:DBPASSWORDKEY",
    "ParameterValue": "$env:DBPASSWORDVALUE"
}, {
    "ParameterKey": "$env:WEBPASSWORDKEY",
    "ParameterValue": "$env:WEBPASSWORDVALUE"
}, {
    "ParameterKey": "$env:KEYNAMEKEY",
    "ParameterValue": "$env:KEYNAMEVALUE"
}, {
    "ParameterKey": "$env:REMOTEACCESSLOCATIONKEY",
    "ParameterValue": "$env:REMOTEACCESSLOCATIONVALUE"
},{
    "ParameterKey": "$env:WEBSERVEROSVERSIONKEY",
    "ParameterValue": "$env:WEBSERVEROSVERSIONVALUE",
}, {
    "ParameterKey": "$env:LANSAMSIKEY",
    "ParameterValue": "$env:MSIURLPREVIOUS"
}, {
    "ParameterKey": "LansaVersion",
    "ParameterValue": "V14 SP2"
}, {
    "ParameterKey": "11WebserverOSVersion",
    "ParameterValue": "win2016"
}, {
    "ParameterKey": "CurrentVPC",
    "ParameterValue": "$env:CURRENTVPC"
}, {
    "ParameterKey": "AvailabilityZones",
    "ParameterValue": "$env:AVAILABILITYZONES"
}, {
    "ParameterKey": "NumberOfAZs",
    "ParameterValue": "$env:NUMBEROFAZS"
}, {
    "ParameterKey": "DBSubnetGroupName",
    "ParameterValue": "$env:DBSUBNETGROUPNAME"
}, {
    "ParameterKey": "ELBSubnetIds",
    "ParameterValue": "$env:ELBSUBNETIDS"
}]'

$path = "$env:System_DefaultWorkingDirectory/TemplateParameters-$region.json"
$jsonContent = $content | ConvertTo-Json
Set-Content -Path $path -Value $jsonContent

Write-Host "content is $jsonContent"
