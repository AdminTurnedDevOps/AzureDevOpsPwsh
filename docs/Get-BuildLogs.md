---
external help file: AzureDevOpsPwsh-help.xml
Module Name: AzureDevOpsPwsh
online version:
schema: 2.0.0
---

# Get-BuildLogs

## SYNOPSIS
List build logs

## SYNTAX

```
Get-BuildLogs [[-username] <String>] [[-AZDevOpsOrg] <String>] [[-AZDevOpsProject] <String>]
 [[-buildNumber] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
This function will list the logs of a specific build. You will specify the build by build number

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-AllBuilds -username your_email_for_azure_devops -AZDevOpsOrg devops_org_name -AZDevOpsProject devops_project_name -buildNumber 59
```

## PARAMETERS

### -AZDevOpsOrg
This parameter is for the name of your DevOps org. If you go to your Azure DevOps URL, it's the name right after the backslash of "https://dev.azure.com/"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AZDevOpsProject
This parameter is for the name of your DevOps org. If you go to your Azure DevOps URL, it's the name right after the Organization name "https://dev.azure.com/your_org/"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -buildNumber
Build number for the build that you would like to retrieve logs for

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -username
Email address that you use to sign into Azure DevOps and Azure

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
