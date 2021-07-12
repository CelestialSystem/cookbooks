param (
    [Parameter(Mandatory=$true)]
    [string]
    $region
  )



$content = [{
    "ParameterKey": "StackType",
    "ParameterValue": "Development"
},{
    "ParameterKey": "10LansaGitRepoBranch",
    "ParameterValue": "$(CookbooksBranchPreview)"
},{
    "ParameterKey": "UpdateManagementScripts",
    "ParameterValue": "Yes"
},{
    "ParameterKey": "$(DBPasswordKey)",
    "ParameterValue": "$(DBPasswordValue)"
}, {
    "ParameterKey": "$(WebPasswordKey)",
    "ParameterValue": "$(WebPasswordValue)"
}, {
    "ParameterKey": "$(KeyNameKey)",
    "ParameterValue": "$(KeyNameValue)"
}, {
    "ParameterKey": "$(RemoteAccessLocationKey)",
    "ParameterValue": "$(RemoteAccessLocationValue)"
},{
    "ParameterKey": "$(WebserverOSVersionKey)",
    "ParameterValue": "$(WebserverOSVersionValue)",
}, {
    "ParameterKey": "$(LansaMSIKey)",
    "ParameterValue": "$(msiURLPrevious)"
}, {
    "ParameterKey": "LansaVersion",
    "ParameterValue": "V14 SP2"
}, {
    "ParameterKey": "11WebserverOSVersion",
    "ParameterValue": "win2012"
}, {
    "ParameterKey": "CurrentVPC",
    "ParameterValue": "$(CurrentVPC)"
}, {
    "ParameterKey": "AvailabilityZones",
    "ParameterValue": "$(AvailabilityZones)"
}, {
    "ParameterKey": "NumberOfAZs",
    "ParameterValue": "$(NumberOfAZs)"
}, {
    "ParameterKey": "DBSubnetGroupName",
    "ParameterValue": "$(DBSubnetGroupName)"
}, {
    "ParameterKey": "ELBSubnetIds",
    "ParameterValue": "$(ELBSubnetIds)"
}]


Write-Host("the content of json will be--- START");
Write-Host $content
Write-Host("the content of json will be--- END");
